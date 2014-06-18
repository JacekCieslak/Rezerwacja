class TableChanges < ActiveRecord::Migration
  def change
   drop_table :less_studs
   remove_column :lessons, :student_id
   create_table :lessons_students, id: false do |t|
      t.belongs_to :student
      t.belongs_to :lesson
  end
  end
end
