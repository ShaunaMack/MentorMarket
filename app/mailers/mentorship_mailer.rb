# frozen_string_literal: true

class MentorshipMailer < ApplicationMailer
  def new_mentor_request_email
    @mentorship = params[:mentorship]

    mail(to: @mentorship.user.email, subject: 'You got a new mentorship request')
  end

  def mentor_accept_email
    @mentorship = params[:mentorship]

    mail(to: @mentorship.user.email, subject: 'Mentorship request accepted')
  end


  def mentor_decline_email
    @mentorship = params[:mentorship]

    mail(to: @mentorship.user.email, subject: 'Mentorship request declined')
  end

end
