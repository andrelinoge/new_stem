class Admin::SiteSettingsController < Admin::ApplicationController
  def index
    @settings = collection.page(params[:page]).per(10)
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
end