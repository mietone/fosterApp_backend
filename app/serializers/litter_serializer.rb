class LitterSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date
  has_many :kittens
end
