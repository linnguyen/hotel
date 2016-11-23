class ChangeLineitemName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :lineitems, :room_id, :room_code
  end
end
