Rails.application.routes.draw do
  root 'items#index'
  resources :items
  get 'users' => "users#index"
end
