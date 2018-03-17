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

      resources :projects do
        resources :project_images
      end
      resources :blogs
      resources :testimonials
      resources :content_blocks, only: [:index, :edit, :update, :show]
      resources :static_pages, only: [:index, :edit, :update, :show]
      resources :team_members
      resources :services
      resources :slides
    end

    get '/about', to: 'pages#about', as: :about_page
    get '/contacts', to: 'pages#contact_us', as: :contacts_page
    resources :blogs, only: [:index, :show]
    resources :projects, only: [:index, :show]
  end
end
