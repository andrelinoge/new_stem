class PagesController < ApplicationController
  def about
    @page = StaticPage[:about_us]
  end

  def contact_us
    @page            = StaticPage[:contact_us]
    @consult_request = ConsultRequest.new
  end
end