class AddReferenceToCheckin < ActiveRecord::Migration[5.0]
  def change
  	add_reference :lineitems, :checkin, index: true
  end
end
