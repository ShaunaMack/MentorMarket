class MentorshipMailer < ApplicationMailer
    def mentor_request_email
        @mentorship = params[:mentorship]
    
        mail(to: @mentorship.user.email, subject: "You got a new mentor request")
      end
end
