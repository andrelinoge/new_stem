class ConsultRequestsController < ApplicationController
  def create
    @consult_request = ConsultRequest.create(resource_params)

    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.js 
    end
  end


  protected

  def resource_params
    params.require(:consult_request).permit(:user_name, :phone)
  end
end