class ProjectsController < ApplicationController
  def index
    @projects = collection.page(params[:page]).per(12)
  end

  def show
    @project = resource
  end

  protected

  def collection
    Project.recent
  end

  def resource
    collection.find(params[:id])
  end
end