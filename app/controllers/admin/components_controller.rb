class Admin::ComponentsController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @components = collection.page(params[:page]).per(10)
  end

  def show
    @component = resource
  end

  def new
    @component = collection.build
  end

  def create
    @component = collection.create(resource_params)

    if @component.persisted?
      redirect_to admin_components_path, success: 'Component post was created'
    else
      render :new
    end
  end

  def edit
    @component = resource
  end

  def update
    @component = resource

    if @component.update(resource_params)
      redirect_to admin_components_path, notice: 'Component was updated'
    else
      render :edit
    end
  end

  def destroy
    @component = resource

    if @component.destroy
      redirect_to admin_components_path, success: 'Component was deleted successfully'
    else
      redirect_to admin_components_path, error: 'Component was not deleted'
    end
  end

  protected

  def collection
    Component.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:component)
      .permit(:name, :category, :price_per_kw)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.components'), admin_components_path
  end
end