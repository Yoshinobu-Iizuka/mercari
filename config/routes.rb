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
end

