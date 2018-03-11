class PagesController < ApplicationController
  def about
    @page = StaticPage[:about_us]
  end

  def contact_us
    @page = StaticPage[:contact_us]
  end
end