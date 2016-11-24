class ChanDataColumnLineitem < ActiveRecord::Migration[5.0]
 def up
   change_column :lineitems, :room_code, :string
  end

  def down
   change_column :lineitems, :room_code, :integer
  end
end
