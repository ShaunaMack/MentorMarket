class PagesController < ApplicationController
    

    def search
        if params[:search].blank?
            redirect_to(root_path, alert: "Empty field!") and return
        else
            @parameter = params[:search].downcase
            @results = Profile.where("lower(name) LIKE :search", search: "%#{@parameter}%")
        end
    end

    def welcome
    end

    # def filter
    #     @skills=@mentor.skills

    #     if params[:search].blank?
    #         redirect_to(root_path, alert: "Empty field!") and return
    #     else
    #         @results = []
    #         @mentor = Mentor.all
    #         @parameter = params[:search].downcase
    #         @results = Ment.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    #     end
    # end


end
