class CreateRoomtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :roomtypes do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
