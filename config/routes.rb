Tapir::Application.routes.draw do
  devise_for :users
  resources :frames
  resources :blocks
  resources :puffs
  resources :feeds
  resources :pages
  resources :page_entries
  resources :articles

  get "home/index"

  root to: 'home#index'
end
