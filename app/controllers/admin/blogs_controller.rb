class Admin::BlogsController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @blog_posts = collection.page(params[:page]).per(10)
  end

  def show
    @blog_post = resource
  end

  def new
    @blog_post = Blog.new
  end

  def create
    @blog_post = Blog.create(resource_params)

    if @blog_post.persisted?
      redirect_to admin_blog_path(@blog_post), success: 'Blog post was created'
    else
      render :new
    end
  end

  def edit
    @blog_post = resource
  end

  def update
    @blog_post = resource

    if @blog_post.update(resource_params)
      redirect_to admin_blog_path(@blog_post), notice: 'Blog post was updated'
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
    Blog.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:blog)
      .permit(:cover, :title, :description, :content, :meta_keys, :meta_description)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.blog'), admin_blogs_path
  end
end