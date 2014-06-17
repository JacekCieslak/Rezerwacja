class AddColumnsToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :name, :string
  	add_column :students, :surname, :string
  	add_column :students, :specialization, :string
  end
end
