class BlogsController < ApplicationController
  def index
    @blog_posts = collection.page(params[:page]).per(5)
  end

  def show
    @blog_post = resource
  end

  protected

  def collection
    Blog.recent
  end

  def resource
    collection.find(params[:id])
  end
end