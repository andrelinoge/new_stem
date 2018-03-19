class Admin::ApplicationController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  add_breadcrumb I18n.t('admin.navigation.dashboard'), :admin_root
end