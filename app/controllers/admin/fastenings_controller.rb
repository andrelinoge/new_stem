class Admin::FasteningsController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @fastenings = collection.page(params[:page]).per(10)
  end

  def show
    @fastening = resource
  end

  def new
    @fastening = collection.build
  end

  def create
    @fastening = collection.create(resource_params)

    if @fastening.persisted?
      redirect_to admin_fastenings_path, success: 'Fastening post was created'
    else
      render :new
    end
  end

  def edit
    @fastening = resource
  end

  def update
    @fastening = resource

    if @fastening.update(resource_params)
      redirect_to admin_fastenings_path, notice: 'Fastening was updated'
    else
      render :edit
    end
  end

  def destroy
    @fastening = resource

    if @fastening.destroy
      redirect_to admin_fastenings_path, success: 'Fastening was deleted successfully'
    else
      redirect_to admin_fastenings_path, error: 'Fastening was not deleted'
    end
  end

  protected

  def collection
    Fastening.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:fastening)
      .permit(:name, :category, :price_per_kw)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.fastenings'), admin_fastenings_path
  end
end