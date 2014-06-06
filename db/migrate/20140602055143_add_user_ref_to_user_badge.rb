class AddUserRefToUserBadge < ActiveRecord::Migration
  def change
    add_reference :user_badges, :user, index: true
  end
end
