class Admin::UsersController < Admin::ApplicationController
  before_action :set_breadcrumbs
  
  def edit
    @user = current_user
  end

  def update_password
    @user = current_user
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to admin_root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def set_breadcrumbs
    add_breadcrumb I18n.t('admin.navigation.users'), ''
  end
end