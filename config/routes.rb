Tapir::Application.routes.draw do
  devise_for :users

  resources :blocks

  get "home/index"

  root to: 'home#index'
end
