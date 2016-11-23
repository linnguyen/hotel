class AddReferenceToRoomType < ActiveRecord::Migration[5.0]
  def change
  	add_reference :roomtypes, :hotel, index: true
  end
end
