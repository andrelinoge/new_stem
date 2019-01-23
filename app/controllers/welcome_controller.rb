class WelcomeController < ApplicationController
  def index
    @consult_request = ConsultRequest.new
  end

  def not_found
  	render status: 404
  end
end