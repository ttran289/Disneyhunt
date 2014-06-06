class AddBadgeToPicture < ActiveRecord::Migration
  def change
  	change_table :pictures do |t|
  		t.references :badge, index: true
  	end
  end
end
