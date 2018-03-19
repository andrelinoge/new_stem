class Admin::ProjectsController < Admin::ApplicationController
  before_action :set_breadcrumbs

  def index
    @projects = collection.page(params[:page]).per(10)
  end

  def show
    @project = resource
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(resource_params)

    if @project.persisted?
      redirect_to [:admin, @project], success: 'Project post was created'
    else
      render :new
    end
  end

  def edit
    @project = resource
  end

  def update
    @project = resource

    if @project.update(resource_params)
      redirect_to [:admin, @project], notice: 'Project post was updated'
    else
      render :edit
    end
  end

  def destroy
    @project = resource

    if @project.destroy
      redirect_to admin_projects_path, success: 'Project was deleted successfully'
    else
      redirect_to admin_projects_path, error: 'Project was not deleted'
    end
  end

  protected

  def collection
    Project
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:project)
      .permit(
        :cover, 
        :title, 
        :description, 
        :content, 
        :meta_keys, 
        :meta_description
      )
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.projects'), admin_projects_path
  end
end