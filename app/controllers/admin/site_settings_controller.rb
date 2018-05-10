class Admin::SiteSettingsController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def index
    @settings = collection.page(params[:page]).per(20)
  end

  def edit
    @setting = resource
  end

  def update
    @setting = resource

    if @setting.update(resource_params)
      redirect_to admin_site_settings_path
    else
      render :edit
    end
  end

  protected

  def collection
    SiteSetting.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:site_setting)
      .permit(:value)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.site_settings'), admin_site_settings_path
  end
end