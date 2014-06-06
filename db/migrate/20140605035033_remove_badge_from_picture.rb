class RemoveBadgeFromPicture < ActiveRecord::Migration
  def change
    remove_column :pictures, :badge, :string
  end
end
