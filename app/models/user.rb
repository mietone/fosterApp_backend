class User < ApplicationRecord
  has_many :kittens
  has_many :litters, through: :kittens
  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/
end
