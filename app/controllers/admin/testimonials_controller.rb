class Admin::TestimonialsController < Admin::ApplicationController
  def index
    @testimonials = collection.page(params[:page]).per(10)
  end

  def show
    @testimonial = resource
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.create(resource_params)

    if @testimonial.persisted?
      redirect_to [:admin, @testimonial], success: 'Testimonial post was created'
    else
      render :new
    end
  end

  def edit
    @testimonial = resource
  end

  def update
    @testimonial = resource

    if @testimonial.update(resource_params)
      redirect_to [:admin, @testimonial], notice: 'Testimonial post was updated'
    else
      render :edit
    end
  end

  def destroy
    @testimonial = resource

    if @testimonial.destroy
      redirect_to admin_testimonials_path, success: 'Testimonial post was deleted successfully'
    else
      redirect_to admin_testimonials_path, error: 'Testimonial post was not deleted'
    end
  end

  protected

  def collection
    Testimonial.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:testimonial)
      .permit(:author, :position, :content)
  end
end