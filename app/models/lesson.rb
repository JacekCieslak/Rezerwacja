class Lesson < ActiveRecord::Base
	attr_accessor :lesson_id #id lekcji na która zapisuje sie student

	belongs_to :room
	belongs_to :employee
	has_and_belongs_to_many :students
	validates :name, :employee_id, :room_id, :week_type, :hour, :day, presence: true
	validate :check_lesson
	


	def check_lesson
		@lesson = Lesson.where(hour: self.hour, room_id: self.room_id, day: self.day, week_type: self.week_type )
		if @lesson.count > 0
			errors.add(self.name,' nie może być dodany, ponieważ w  podanym terminie sala jest zarezerwowana przez inny przedmiot')
			
		end
	end
end
