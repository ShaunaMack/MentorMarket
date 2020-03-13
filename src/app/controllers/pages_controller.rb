# frozen_string_literal: true

class PagesController < ApplicationController
  def search
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    else
      @parameter = params[:search].downcase
      @results = Profile.where('lower(name) LIKE :search', search: "%#{@parameter}%")
    end
  end

  def welcome; end
end
