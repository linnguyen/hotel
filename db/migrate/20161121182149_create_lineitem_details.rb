class CreateLineitemDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitem_details do |t|
      t.string :nameguest
      t.string :identification
      t.string :address
      t.integer :gender
      t.references :lineitem, foreign_key: true

      t.timestamps
    end
  end
end
