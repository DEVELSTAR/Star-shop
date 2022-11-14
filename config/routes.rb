Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root 'home#index'
  resources :buyms
      resources :order_items

  resources :users, only: [:show, :edit, :update]
  resources :order_items
  resource :carts, only: [:show]

end
