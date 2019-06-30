class User < ApplicationRecord
  has_many :kittens
  has_many :litters, through: :kittens
end
