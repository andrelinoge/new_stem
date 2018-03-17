class Admin::SlidesController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @slides = collection.page(params[:page]).per(10)
  end

  def show
    @slide = resource
  end

  def new
    @slide = Slide.new
  end

  def create
    @slide = Slide.create(resource_params)

    if @slide.persisted?
      redirect_to admin_slide_path(@slide), success: 'Slide was created'
    else
      render :new
    end
  end

  def edit
    @slide = resource
  end

  def update
    @slide = resource

    if @slide.update(resource_params)
      redirect_to admin_slide_path(@slide), notice: 'Slide was updated'
    else
      render :edit
    end
  end

  def destroy
    @slide = resource

    if @slide.destroy
      redirect_to admin_slides_path, success: 'Slide was deleted successfully'
    else
      redirect_to admin_slides_path, error: 'Slide was not deleted'
    end
  end

  protected

  def collection
    Slide.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:slide)
      .permit(:title, :small_title, :content, :image)
  end

  def set_breadcrumbs
    add_breadcrumb "Slides", admin_slides_path
  end
end