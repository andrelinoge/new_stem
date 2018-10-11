class Admin::InvertersController < Admin::ApplicationController
  before_action :set_breadcrumbs

  def index
    @inverters = collection.page(params[:page]).per(10)
  end

  def show
    @inverter = resource
  end

  def new
    @inverter = collection.build
  end

  def create
    @inverter = collection.create(resource_params)

    if @inverter.persisted?
      redirect_to admin_inverters_path, success: 'Inverter post was created'
    else
      render :new
    end
  end

  def edit
    @inverter = resource
  end

  def update
    @inverter = resource

    if @inverter.update(resource_params)
      redirect_to admin_inverters_path, notice: 'Inverter was updated'
    else
      render :edit
    end
  end

  def destroy
    @inverter = resource

    if @inverter.destroy
      redirect_to admin_inverters_path, success: 'Inverter was deleted successfully'
    else
      redirect_to admin_inverters_path, error: 'Inverter was not deleted'
    end
  end

  protected

  def collection
    Inverter.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:inverter)
      .permit(:name, :category, :price, :range_min, :range_max)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.inverters'), admin_inverters_path
  end
end