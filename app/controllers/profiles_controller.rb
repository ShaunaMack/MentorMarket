class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user

        respond_to do |format|
            if @profile.save
                format.html { redirect_to mentor_path(@profile.user), notice: 'Profile was successfully created.' }
                format.json { render :edit, status: :created, location: @profile }
            else
                format.html { render :new }
                format.json { render json: @profile.errors, status: :unprocessable_entity }
            end
        end
    end

    def edit
        
    end

    def show
        
    end
      
    def update
        respond_to do |format|
          if @profile.update(profile_params)
            format.html { redirect_to mentor_path(@profile.user), notice: 'Profile was successfully updated.' }
            format.json { render :edit, status: :ok, location: @profile }
          else
            format.html { render :edit }
            format.json { render json: @profile.errors, status: :unprocessable_entity }
          end
        end
      end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:user_id, :name, :job_title, :employer, :city, :state)
    end
end