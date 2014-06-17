class Lesson < ActiveRecord::Base
	belongs_to :room
	belongs_to :employee
	validates :name, :employee_id, :room_id, :week_type, :hour, :day, presence: true
	validate :check_lesson
	


	def check_lesson
		@lesson = Lesson.where(hour: self.hour, room_id: self.room_id, day: self.day, week_type: self.week_type )
		if @lesson.count > 0
			errors.add(:hour, 'NIE')
		end
	end
end
