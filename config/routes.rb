Tapir::Application.routes.draw do
  resources :page_entries


  resources :pages


  devise_for :users

  resources :frames
  resources :blocks
  resources :puffs
  resources :feeds

  get "home/index"

  root to: 'home#index'
end
