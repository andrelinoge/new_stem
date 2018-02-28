Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'

  scope "(:locale)" do
    root 'welcome#index'

    namespace :admin do
      devise_for :users, only: :sessions
      root 'dashboard#index'

      resources :settings, only: [:index, :edit, :update]
    end
  end
end
