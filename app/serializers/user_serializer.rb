class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :kitten
end
