class AddDegreeToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :degree, :string
  end
end
