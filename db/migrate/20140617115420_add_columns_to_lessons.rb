class AddColumnsToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :week_type, :string
  	add_column :lessons, :hour, :string
  	add_column :lessons, :day, :string
  end
end
