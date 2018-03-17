class Admin::ApplicationController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  add_breadcrumb "Dashboard", :admin_root
end