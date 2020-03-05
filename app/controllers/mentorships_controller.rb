class MentorshipsController < ApplicationController

    def index
        @users = User.all
    end

    def create
        @mentorship = current_user.mentorships.build(:mentor_user_id => params[:mentor_user_id])
        if @mentorship.save
          flash[:notice] = "Added mentor."
          redirect_to root_url
        else
          flash[:notice] = "Unable to add mentor."
          redirect_to root_url
        end
    end
end
