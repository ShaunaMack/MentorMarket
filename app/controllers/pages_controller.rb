class PagesController < ApplicationController
    def welcome
    end

    def search
        if params[:search].blank?
            redirect_to(root_path, alert: "Empty field!") and return
        else
            # p gender::text
            @parameter = params[:search].downcase
            @results = Mentor.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
        end
    end
end
