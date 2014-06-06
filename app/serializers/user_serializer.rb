class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :email
  # has_many :pictures 
  # has_many :badges
end
