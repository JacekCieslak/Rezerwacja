class LessonsController < ApplicationController
	def new
		@lesson = Lesson.new
	end
	def create
		@lesson = Lesson.new(lesson_params)
		@lesson.employee_id = current_user.profile.id
		@lesson.save
	end

	def lesson_params
		params.require(:lesson).permit(:name, :hour,:week_type,:day, :room_id )
	end
end

