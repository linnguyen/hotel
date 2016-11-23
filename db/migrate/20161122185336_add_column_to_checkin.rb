class AddColumnToCheckin < ActiveRecord::Migration[5.0]
  def change
  	 add_column :checkins, :status, :integer, :default => 0
  end
end
