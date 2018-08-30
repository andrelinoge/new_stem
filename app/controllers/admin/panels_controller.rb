class Admin::PanelsController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @panels = collection.page(params[:page]).per(10)
  end

  def new
    @panel = collection.build
  end

  def create
    @panel = collection.create(resource_params)

    if @panel.persisted?
      redirect_to admin_panels_path, success: 'Panel post was created'
    else
      render :new
    end
  end

  def edit
    @panel = resource
  end

  def update
    @panel = resource

    if @panel.update(resource_params)
      redirect_to admin_panels_path, notice: 'Panel was updated'
    else
      render :edit
    end
  end

  def destroy
    @panel = resource

    if @panel.destroy
      redirect_to admin_panels_path, success: 'Panel was deleted successfully'
    else
      redirect_to admin_panels_path, error: 'Panel was not deleted'
    end
  end

  protected

  def collection
    Panel.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:panel)
      .permit(:name, :category, :price_per_kw)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.panels'), admin_static_pages_path
  end
end