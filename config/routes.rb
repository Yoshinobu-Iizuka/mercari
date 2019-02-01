Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: [:index]
  resources :users do
    get 'logout', on: :collection
  end
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/confirm'
end
