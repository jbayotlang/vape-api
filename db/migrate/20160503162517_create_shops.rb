class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :address
      t.string :hours
      t.string :sns_page
      t.float :longitude
      t.float :latitude
      t.timestamps null: false
    end
  end

  def down
    drop_table :shops
  end
end
