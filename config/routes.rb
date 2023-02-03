Rails.application.routes.draw do
  resources :resume_infos
  get 'admin/dashboard'
  get 'warning' => 'static_pages#warning'

  resources :languages
  resources :social_networks

  get 'static_pages/landing_page'
  get 'static_pages/dashboard'

  root 'home#index'
  get 'home/index'
  post 'home/send_message'

  devise_for :users
  resources :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
