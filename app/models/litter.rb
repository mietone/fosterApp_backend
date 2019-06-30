class Litter < ApplicationRecord
  has_many :kittens
  has_many :users, through: :kittens
end
