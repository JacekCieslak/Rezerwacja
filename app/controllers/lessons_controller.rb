class LessonsController < ApplicationController
	before_action :authenticate_user!
	def new
		@lesson = Lesson.new
	end
	def create
		@lesson = Lesson.new(lesson_params)
		@lesson.employee_id = current_user.profile.id
		
		 if @lesson_save
      		redirect_to :controller=>'lessons', :action => 'index'
    	 else
     		 render 'new'
   		 end
	end

	def lesson_params
		params.require(:lesson).permit(:name, :hour,:week_type,:day, :room_id )
	end

	def index
		
		@lessons = Lesson.where(employee_id: current_user.profile.id)
		
	end 

	def edit
	end

	def destroy
		@lesson = Lesson.find(params[:id])
		@lesson.delete
		redirect_to :controller=>'lessons', :action => 'index'
	end
end

