class PagesController < ApplicationController
    def welcome
    end

    def search
        if params[:search].blank?
            redirect_to(root_path, alert: "Empty field!") and return
        else
            @parameter = params[:search].downcase
            @results = Profile.where("lower(name) LIKE :search", name.downcase, search: "%#{@parameter}%")
        end
    end
end
