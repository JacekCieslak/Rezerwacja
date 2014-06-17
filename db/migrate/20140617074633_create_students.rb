class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.string :specialization
      t.string :name
      t.string :surname
      t.timestamps

    end
  end
end
