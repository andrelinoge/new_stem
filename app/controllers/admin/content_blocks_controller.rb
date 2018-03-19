class Admin::ContentBlocksController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @content_blocks = collection.page(params[:page]).per(10)
  end

  def show
    @content_block = resource
  end

  def edit
    @content_block = resource
  end

  def update
    @content_block = resource

    if @content_block.update(resource_params)
      redirect_to admin_content_block_path(@content_block), notice: 'Content block was updated'
    else
      render :edit
    end
  end

  protected

  def collection
    ContentBlock.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:content_block)
      .permit(:title, :small_title, :content, :image)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.content_blocks'), admin_content_blocks_path
  end
end