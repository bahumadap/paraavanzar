Rails.application.routes.draw do
  resources :responses
  resources :comments
  resources :documents
  resources :tickets
  resources :executives
  resources :reports
  resources :supervisors
  resources :administrators
  resources :requesting_users
  resources :users
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"
end
