class AddBadgeRefToUserBadge < ActiveRecord::Migration
  def change
    add_reference :user_badges, :badge, index: true
  end
end
