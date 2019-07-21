module Api::V1
  class LittersController < ApplicationController
    before_action :set_litter, only: [:show, :edit, :update, :destroy]

    # GET /litters
    def index
      litter = Litter.all.map do |litter|
        {
          id: litter.id,
          name: litter.name,
          start_date: litter.start_date,
          end_date: litter.end_date
        }
      end

      render json: litter
    end

    # GET /litters/1
    def show
      render json: litter_json(@litter)
    end

    # POST /litters
    def create
      @litter = Litter.new(litter_params)

      if result = @litter.save
        render litter_json(@litter), status: result ? 200 : 422
      else
        render json: @litter.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /litters/1
    def update
      @litter.attributes = litter_params
      if result = @litter.update(litter_params)
        render litter_json(@litter), status: result ? 200 : 422
      else
        render json: @litter.errors, status: :unprocessable_entity
      end
    end

    # DELETE /litters/1
    def destroy
      @litter.destroy
      render json: { result: ok }
    end

    private

      def litter_json(litter)
        {
          id: litter.id,
          name: litter.name,
          start_date: litter.start_date,
          end_date: litter.end_date,
          kittens: litter.kittens.map do |kitten|
            {
              id: kitten.id,
              name: kitten.name,
              dob: kitten.dob,
              gender: kitten.gender
            }
          end
        }
      end

      # Use callbacks to share common setup or constraints between actions.
      def set_litter
        @litter = Litter.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def litter_params
        params.require(:litter).permit(
          :name,
          :start_date,
          :end_date,
          :with_mom,
          kittens_attributes: [
            :id,
            :name,
            :gender,
            :dob,
            :image,
            :litter_id,
            :_destroy
          ]
        )
      end
  end
end
