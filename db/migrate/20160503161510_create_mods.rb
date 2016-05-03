class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :name
      t.string :mod_type
      t.string :battery
      t.string :maker
      t.timestamps null: false
    end
  end

  def down
    drop_table :mods
  end
end
