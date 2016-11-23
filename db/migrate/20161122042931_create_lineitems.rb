class CreateLineitems < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitems do |t|
      t.integer :room_id
      t.datetime :fromdate
      t.datetime :startdate

      t.timestamps
    end
  end
end
