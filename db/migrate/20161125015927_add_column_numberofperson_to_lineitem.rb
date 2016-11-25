class AddColumnNumberofpersonToLineitem < ActiveRecord::Migration[5.0]
  def change
  	add_column :lineitems, :numberofperson, :integer
  end
end
