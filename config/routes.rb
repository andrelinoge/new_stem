Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'

  scope "(:locale)" do
    root 'welcome#index'

    namespace :admin do
      devise_for :users, only: :sessions
      root 'dashboard#index'

      resources :site_settings, only: [:index, :edit, :update]
      resource :user, only: [:edit] do
        collection do
          patch 'update_password'
        end
      end
    end
  end
end
