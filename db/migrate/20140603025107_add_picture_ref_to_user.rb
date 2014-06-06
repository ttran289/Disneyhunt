class AddPictureRefToUser < ActiveRecord::Migration
  def change
    add_reference :users, :picture, index: true
  end
end
