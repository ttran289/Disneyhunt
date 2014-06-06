class BadgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :url
  has_many :pictures
  has_many :users, through: :pictures
end
