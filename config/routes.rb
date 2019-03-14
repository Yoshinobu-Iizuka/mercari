Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :items do
    get 'confirm', on: :collection
  end
  resources :users do
    get 'logout', on: :collection
    get 'profile', on: :collection
  end
  resources :users, only: [:index,:show]
  resources :creditcards, only: [:index]
  resources :items_buy_confirms, only: [:index]
  
end

