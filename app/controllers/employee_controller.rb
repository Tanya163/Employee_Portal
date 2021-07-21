class EmployeeController < ApplicationController

  # before_action :save_password, only: [:create]
    
    def show
      @employee = Employee.find(params[:id])
    end

    def index
      @employees=Employee.all
    end

    def create
      @employee = Employee.new(employee_params)
      if @employee.save
        flash[:notice] = "New Employee Onboarded!"
        redirect_to employee_path(current_employee.id)
      else
        render 'new'
      end
    end

    private

      def employee_params
        params.require(:employee).permit(:name, :email, :password, :password_confirmation, :contact, :designation)
      end

      def save_password
        @temp_password = employee_params[:password]
      end
end
