class AddLatitudeToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :latitude, :float
    add_column :pictures, :longitude, :float
    add_column :pictures, :date, :string
  end
end
