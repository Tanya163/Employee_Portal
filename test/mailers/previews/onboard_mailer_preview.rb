# Preview all emails at http://localhost:3000/rails/mailers/onboard_mailer
class OnboardMailerPreview < ActionMailer::Preview
    def onboard
        OnboardMailer.with(employee: Employee.all.sample).onboard(params[:employee])
    end
end
