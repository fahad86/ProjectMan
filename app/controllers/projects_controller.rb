class ProjectsController < ApplicationController
  def index
    if request.xhr?
      render json: Project.all
    end
  end

  def create
    render json: Project.create!(params[:project])
  end

  def update
    project.update_attributes!(params[:project])
    render json: project
  end

  def destroy
    render json: project.destroy
  end

  private

  def project
    @project ||= Project.find(params[:id])
  end
end
