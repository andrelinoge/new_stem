class Admin::MontagesController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @montages = collection.page(params[:page]).per(10)
  end

  def show
    @montage = resource
  end

  def new
    @montage = collection.build
  end

  def create
    @montage = collection.create(resource_params)

    if @montage.persisted?
      redirect_to admin_montages_path, success: 'Montage was created'
    else
      render :new
    end
  end

  def edit
    @montage = resource
  end

  def update
    @montage = resource

    if @montage.update(resource_params)
      redirect_to admin_montages_path, notice: 'Montage was updated'
    else
      render :edit
    end
  end

  def destroy
    @montage = resource

    if @montage.destroy
      redirect_to admin_montages_path, success: 'Montage was deleted successfully'
    else
      redirect_to admin_montages_path, error: 'Montage was not deleted'
    end
  end

  protected

  def collection
    Montage.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:montage)
      .permit()
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.montage'), admin_montages_path
  end
end