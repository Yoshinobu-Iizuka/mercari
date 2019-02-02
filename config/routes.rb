Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :users, only: %i(index show)
  resources :items, only: [:index]
  resources :creditcards, only: [:index]
  resources :items_buy_confirms, only: [:index]
end
