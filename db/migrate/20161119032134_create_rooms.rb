class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :avatar
      t.integer :status
      t.integer :bed_quantity
      t.references :roomtype, foreign_key: true

      t.timestamps
    end
  end
end
