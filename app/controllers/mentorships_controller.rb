
class MentorshipsController < ApplicationController
  def index
  end

  def create
    @mentorship = current_user.mentorships.build(mentor_user_id: params[:mentor_user_id])
    if @mentorship.save
      flash[:notice] = 'Added mentor.'
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
        format.html { redirect_to mentorships_path, notice: 'Mentorship was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentorships }
      else
        format.html { render :edit }
        format.json { render json: @mentorship.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def mentorship_params
    params.require(:mentorship).permit(:user_id, :accepted)
    end
end
