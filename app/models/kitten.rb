class Kitten < ApplicationRecord
  belongs_to :litter
  belongs_to :user
end
