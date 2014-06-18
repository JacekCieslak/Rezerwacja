class LessonsController < ApplicationController
	before_action :authenticate_user!, :check

	def new
		@lesson = Lesson.new
	end
	def create
		if params[:lesson][:lesson_id]
			Lesson.find((params[:lesson][:lesson_id]).to_i).students << Student.find(current_user.profile.id)
			logger.debug params[:lesson][:lesson_id].to_i
			redirect_to :controller=>'lessons', :action => 'index'
		else
		@lesson = Lesson.new(lesson_params)
		@lesson.employee_id = current_user.profile.id
		@lesson_save = @lesson.save
		
		 if @lesson_save
      		redirect_to :controller=>'lessons', :action => 'index'
    	 else
     		 render 'new'
   		 end
   		end
	end

	def lesson_params
		params.require(:lesson).permit(:name, :hour,:week_type,:day, :room_id )
	end

	def index
		if current_user.profile_type == "Employee"
			@lessons = Lesson.where(employee_id: current_user.profile.id)
		else
			@lessons = Lesson.all #to jest dla studentów 
		end
	end 

	def edit
	end

	def destroy
		@lesson = Lesson.find(params[:id])
		@lesson.delete
		redirect_to :controller=>'lessons', :action => 'index'
		logger.debug @lesson
	end
	private
	def check
		if(current_user.profile_type == 'Student' && ( action_name == 'new' || action_name == 'destroy' || action_name == 'edit'))
			redirect_to root_path
		end
	end
end

