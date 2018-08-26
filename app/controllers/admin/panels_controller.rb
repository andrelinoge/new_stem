class Admin::XXXController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @static_pages = collection.page(params[:page]).per(10)
  end

  def show
    @static_page = resource
  end

  def new
    @blog_post = collection.build
  end

  def create
    @blog_post = collection.create(resource_params)

    if @blog_post.persisted?
      redirect_to [:admin, ], success: 'xxx post was created'
    else
      render :new
    end
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

  def destroy
    @blog_post = resource

    if @blog_post.destroy
      redirect_to admin_blogs_path, success: 'Blog post was deleted successfully'
    else
      redirect_to admin_blogs_path, error: 'Blog post was not deleted'
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