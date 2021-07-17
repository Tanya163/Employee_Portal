class EmployeeController < ApplicationController

    def show
        @employee = Employee.find(params[:id])
    end

    def index
        @employee=Employee.all
    end
end
