class BadgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :url
  has_many :users, through: :user_badges
end
