class Admin::XXXController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @static_pages = collection.page(params[:page]).per(10)
  end

  def show
    @static_page = resource
  end

  def edit
    @static_page = resource
  end

  def update
    @static_page = resource

    if @static_page.update(resource_params)
      redirect_to admin_static_page_path(@static_page), notice: 'xxx was updated'
    else
      render :edit
    end
  end

  protected

  def collection
    XXX.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:xxx)
      .permit()
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.xxx'), admin_static_pages_path
  end
end