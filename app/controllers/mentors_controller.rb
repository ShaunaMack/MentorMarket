class MentorsController < ApplicationController
  before_action :set_mentor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /mentors
  # GET /mentors.json
  def index
    @mentors = Mentor.all
  end

  # GET /mentors/1
  # GET /mentors/1.json
  def show
    @skills=@mentor.skills
    @beliefs=@mentor.beliefs
  end

  # GET /mentors/new
  def new
    @mentor = Mentor.new
    # @skill.mentor_id = params[:mentor]
  end

  # GET /mentors/1/edit
  def edit
  end

  # POST /mentors
  # POST /mentors.json
  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.picture.attach(params[:mentor][:picture])
    @mentor.user = current_user

    # iterate through parameters - array created by multi select
    params[:mentor][:skills].each do | skill |
      @mentor.skills.build(:name => skill)
    end

    params[:mentor][:beliefs].each do | belief |
      @mentor.beliefs.build(:name => belief)
    end

    respond_to do |format|
      if @mentor.save 
        format.html { redirect_to @mentor, notice: 'Mentor was successfully created.' }
        format.json { render :show, status: :created, location: @mentor }
      else
        format.html { render :new }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentors/1
  # PATCH/PUT /mentors/1.json
  def update
    @mentor.skills.each do |skill|
      skill.destroy
    end
    
    params[:mentor][:skills].each do | skill |
      @mentor.skills.build(:name => skill)
    end
    respond_to do |format|
      if @mentor.update(mentor_params)
        format.html { redirect_to @mentor, notice: 'Mentor profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentor }
      else
        format.html { render :edit }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentors/1
  # DELETE /mentors/1.json
  def destroy
    @mentor.destroy
    respond_to do |format|
      format.html { redirect_to mentors_url, notice: 'Mentor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor
      @mentor = Mentor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mentor_params
      params.require(:mentor).permit(:user_id, :bio, :accept_mentee, :linkedIn, :website, :picture)
    end

end
