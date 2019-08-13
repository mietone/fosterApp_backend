class KittenSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :gender, :image, :litter_id, :user_id
  belongs_to :litter
end
