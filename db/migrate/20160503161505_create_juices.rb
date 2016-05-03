class CreateJuices < ActiveRecord::Migration
  def change
    create_table :juices do |t|
      t.string :name
      t.string :ratio
      t.string :maker
      t.timestamps null: false
    end
  end

  def down
    drop_table :juices
  end
end
