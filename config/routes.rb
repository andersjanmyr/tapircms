Tapir::Application.routes.draw do
  devise_for :users

  resources :frames
  resources :blocks
  resources :puffs
  resources :feeds

  get "home/index"

  root to: 'home#index'
end
