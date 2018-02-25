Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope "(:locale)" do
    root 'welcome#index'

    namespace :admin do
      root 'dashboard#index'

      resources :settings, only: [:index, :edit, :update]
    end
  end
end
