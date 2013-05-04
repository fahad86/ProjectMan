class ProjectsController < ApplicationController
  def index
    if request.xhr?
      render json: Project.all
    end
  end

  def create
    render json: Project.create!(params[:project])
  end

  def destroy
    render json: Project.find(params[:id]).destroy
  end
end
