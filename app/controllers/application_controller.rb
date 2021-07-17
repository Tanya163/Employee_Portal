class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    employee_path(current_employee.id)
  end
end
