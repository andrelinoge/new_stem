class Admin::ServicesController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @services = collection.page(params[:page]).per(10)
  end

  def show
    @service = resource
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create(resource_params)

    if @service.persisted?
      redirect_to admin_service_path(@service), success: 'Service was created'
    else
      render :new
    end
  end

  def edit
    @service = resource
  end

  def update
    @service = resource

    if @service.update(resource_params)
      redirect_to admin_service_path(@service), notice: 'Service was updated'
    else
      render :edit
    end
  end

  def destroy
    @service = resource

    if @service.destroy
      redirect_to admin_services_path, success: 'Service was deleted successfully'
    else
      redirect_to admin_services_path, error: 'Service was not deleted'
    end
  end

  protected

  def collection
    Service.ordered.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:service)
      .permit(:title, :content, :image)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.services'), admin_services_path
  end
end