class OnboardMailerJob < ApplicationJob
  queue_as :default

  def perform(employee_params)
    puts "Job Done"
    OnboardMailer.onboard(employee_params).deliver
  end
end
