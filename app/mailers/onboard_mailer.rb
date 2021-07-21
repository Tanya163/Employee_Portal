class OnboardMailer < ApplicationMailer
    def onboard(employee_params)
        @employee = Employee.new(employee_params)
        mail(to: @employee.email, subject: "Welcome to the company")
    end
end
