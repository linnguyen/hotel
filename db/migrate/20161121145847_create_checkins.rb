class CreateCheckins < ActiveRecord::Migration[5.0]
  def change
    create_table :checkins do |t|
      t.integer :numberofperson
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
