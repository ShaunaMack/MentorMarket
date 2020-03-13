class UserMailer < ApplicationMailer
    def mentor_request_email
        @user = params[:user]
        
        mail(to: @user.email, subject: 'Mentorship Request')
      end
end
