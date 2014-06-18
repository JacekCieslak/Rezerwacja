class LessonsController < ApplicationController
	before_action :authenticate_user!
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
		if current_user.profile_type == "Emmployee"
			@lessons = Lesson.where(employee_id: current_user.profile.id)
		else
			@lessons = Lesson.all
		end
	end 

	def edit
	end

	def destroy
		@lesson = Lesson.find(params[:id])
		@lesson.delete
		redirect_to :controller=>'lessons', :action => 'index'
	end
end

