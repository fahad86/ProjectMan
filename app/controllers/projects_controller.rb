class ProjectsController < ApplicationController
  def index
  end

  def create
    Project.create!(params[:project])
    redirect_to :back
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to :back
  end
end
