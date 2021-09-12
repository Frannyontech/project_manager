class PagesController < ApplicationController

  def index
    if params[:state].present?
      @projects = Project.where("state = ?", params[:state])
    else
      @projects = Project.all
    end
  end

  def create
    @projects = Project.create(name: params[:name],
      description: params[:description], 
      date_start: params[:date_start], 
      date_finish: params[:date_finish], 
      state: params[:state])
  end

  def search
  end
end
