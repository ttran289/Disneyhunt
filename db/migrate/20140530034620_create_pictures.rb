class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :badge
      t.string :caption

      t.timestamps
    end
  end
end
