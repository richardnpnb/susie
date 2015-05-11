Rails.application.routes.draw do
  resources :activities

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
