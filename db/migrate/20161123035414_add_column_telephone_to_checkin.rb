class AddColumnTelephoneToCheckin < ActiveRecord::Migration[5.0]
  def change
  	add_column :checkins, :telephone, :string
  end
end
