class Admin::ProjectImagesController < Admin::ApplicationController
  before_action :set_breadcrumbs

  def index
    @project        = project
    @project_images = collection.page(params[:page]).per(10)
  end

  def show
    @project       = project
    @project_image = resource
  end

  def new
    @project       = project
    @project_image = ProjectImage.new
  end

  def create
    @project       = project
    @project_image = project.project_images.create(resource_params)

    if @project_image.persisted?
      redirect_to [:admin, project, @project_image], success: 'Project image post was created'
    else
      render :new
    end
  end

  def edit
    @project       = project
    @project_image = resource
  end

  def update
    @project       = project
    @project_image = resource

    if @project_image.update(resource_params)
      redirect_to [:admin, project, @project_image], notice: 'Project image post was updated'
    else
      render :edit
    end
  end

  def destroy
    @project       = project
    @project_image = resource

    if @project_image.destroy
      redirect_to admin_project_project_images_path(project), success: 'Project image was deleted successfully'
    else
      redirect_to admin_project_project_images_path(project), error: 'Project image was not deleted'
    end
  end

  protected

  def project
    Project.find(params[:project_id])
  end

  def collection
    project.project_images
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:project_image)
      .permit(
        :image, 
        :title, 
        :description
      )
  end

  def set_breadcrumbs
    add_breadcrumb "Projects", admin_projects_path
    add_breadcrumb project.title, admin_project_path(project)
  end
end