class AddColumnsToRooms < ActiveRecord::Migration
  def change
  	add_column :rooms, :name, :string
  	add_column :rooms, :places, :integer
  end
end
