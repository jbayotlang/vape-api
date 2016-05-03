class CreateWires < ActiveRecord::Migration
  def change
    create_table :wires do |t|
      t.string :name
      t.string :wire_type
      t.string :maker
      t.timestamps null: false
    end
  end

  def down
    drop_table :wires
  end
end
