class StudentsController < ApplicationController
  def new
  	@student = Student.new
  end

  def index
  end
  
  def create
  	
  	@student = Student.new(student_params)
  	@first_save = @student.save
 
    @student.create_user
    @student.user.email = @student.email
    @student.user.password = @student.password
    @second_save = @student.user.save

    if @first_save && @second_save
    redirect_to user_session_path
    else
      render 'new'
    end
  end

private
def student_params
    params.require(:student).permit(:name, :surname, :specialization, :email , :password)
  end
end