class AddReferenceToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_reference :users, :permission, index: true
  end
end
