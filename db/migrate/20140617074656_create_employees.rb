class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :degree
      t.string :name
      t.string :surname
      t.timestamps
    end
  end

end
