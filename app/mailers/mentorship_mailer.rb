# frozen_string_literal: true

class MentorshipMailer < ApplicationMailer
  def new_mentor_request_email
    @mentorship = params[:mentorship]

    mail(to: @mentorship.user.email, subject: 'You got a new mentor request')
  end

  def mentor_accept_email
    @mentorship = params[:mentorship]

    mail(to: @mentorship.user.email, subject: 'Mentor request accepted')
  end
end
