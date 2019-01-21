class Admin::ConsultRequestsController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @consult_requests = collection.page(params[:page]).per(10)
  end

  def mark_as_read
    @consult_request = resource
    @consult_request.mark_as_read!
    
    redirect_to admin_consult_requests_path, success: 'Consult request marked as read successfully'
  end


  def destroy
    @consult_request = resource

    if @consult_request.destroy
      redirect_to admin_consult_requests_path, success: 'Consult request was deleted successfully'
    else
      redirect_to admin_consult_requests_path, error: 'Consult request was not deleted'
    end
  end

  protected

  def collection
    ConsultRequest.ordered.all
  end

  def resource
    collection.find(params[:id])
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.consult_requests'), admin_blogs_path
  end
end