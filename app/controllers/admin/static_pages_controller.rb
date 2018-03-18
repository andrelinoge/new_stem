class Admin::StaticPagesController < Admin::ApplicationController
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
      redirect_to admin_static_page_path(@static_page), notice: 'Static page was updated'
    else
      render :edit
    end
  end

  protected

  def collection
    StaticPage.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:static_page)
      .permit(:content, :title, :meta_description, :meta_keys)
  end

  def set_breadcrumbs
    add_breadcrumb "Static pages", admin_static_pages_path
  end
end