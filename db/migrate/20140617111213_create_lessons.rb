class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
    	t.string :name
    	t.belongs_to :employee
    	t.belongs_to :student
    	t.belongs_to :room
      t.timestamps
    end
  end
end
