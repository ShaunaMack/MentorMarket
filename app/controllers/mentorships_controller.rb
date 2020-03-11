# frozen_string_literal: true

class MentorshipsController < ApplicationController
  def index; end

  def create
    @mentorship = current_user.mentorships.build(mentor_user_id: params[:mentor_user_id])
    if @mentorship.save
      MentorshipMailer.with(mentorship: @mentorship).new_mentor_request_email.deliver_now
      flash[:notice] = 'Your mentorship request has been sent. When the mentor confirms or rejects your request, we will let you know by email!'
      redirect_to root_url
    else
      flash[:notice] = 'Unable to add mentor.'
      redirect_to root_url
    end
  end

  def update
    @mentorship = Mentorship.find(params['id'])
    respond_to do |format|
      if @mentorship.update(mentorship_params)
        MentorshipMailer.with(mentorship: @mentorship).mentor_accept_email.deliver_now
        format.html { redirect_to mentorships_path, notice: 'You have accepted the mentorship request. Start the conversation by clicking "Chat" below!' }
        format.json { render :show, status: :ok, location: @mentorships }
      else
        format.html { render :edit }
        format.json { render json: @mentorship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mentorship = Mentorship.find(params['id'])
    MentorshipMailer.with(mentorship: @mentorship).mentor_decline_email.deliver_now
    Mentorship.delete(params['id'])
    redirect_to mentorships_path
  end

  private

  # Only allow a list of trusted parameters through.
  def mentorship_params
    params.require(:mentorship).permit(:user_id, :accepted)
    end
end
