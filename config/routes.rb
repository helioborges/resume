Rails.application.routes.draw do
  resources :resume_infos
  get 'admin/dashboard'

  resources :languages
  resources :social_networks

  get 'static_pages/landing_page'
  get 'static_pages/dashboard'

  root 'home#index'
  get 'home/index'

  devise_for :users
  resources :users

  resources :contact_messages, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
