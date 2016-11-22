class CreateLineitems < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitems do |t|
      t.integer :room_id
      t.datetime :fromdate
      t.datetime :todate
      t.references :Checkin, foreign_key: true

      t.timestamps
    end
  end
end
