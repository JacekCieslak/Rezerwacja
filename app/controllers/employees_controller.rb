class EmployeesController < ApplicationController
	def new
		@employee = Employee.new
	end

	def create 
		@employee = Employee.new(employee_params)
		@first_save = @employee.save

		@employee.create_user
		@employee.user.email = @employee.email
		@employee.user.password = @employee.password
		@second_save = @employee.user.save

	    if @first_save && @second_save
	    redirect_to user_session_path
	    else
	      render 'new'
	    end
 	 end

	def index
	end

	def employee_params
     params.require(:employee).permit(:name, :surname, :degree, :email , :password)
    end
end
