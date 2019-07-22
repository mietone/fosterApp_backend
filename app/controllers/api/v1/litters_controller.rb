module Api::V1
  class LittersController < ApplicationController
    before_action :set_litter, only: [:show, :edit, :update, :destroy]

    # GET /litters
    def index
      @litters = Litter.all.order("start_date DESC")

      render json: @litters
    end

    # GET /litters/1
    def show
      render json: @litter
    end

    # POST /litters
    def create
      @litter = Litter.new(litter_params)

      if @litter.save
        render json: @litter, status: :created
      else
        render json: @litter.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /litters/1
    def update
      if @litter.update(litter_params)
        render json: @litter
      else
        render json: @litter.errors, status: :unprocessable_entity
      end
    end

    # DELETE /litters/1
    def destroy
      @litter.destroy
    end

    private
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
