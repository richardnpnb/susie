Rails.application.routes.draw do
  resources :activities

  resources :activity_types

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
