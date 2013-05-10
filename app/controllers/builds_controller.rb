class BuildsController < ApplicationController
  def index
    render json: project.builds
  end
  def create
    render json: project.builds.create!
  end

  private

  def project
    Project.find(params[:project_id])
  end
end
