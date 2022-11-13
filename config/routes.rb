Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root 'home#index'
  resources :buyms
  resources :users, only: [:show, :edit, :update]
end
