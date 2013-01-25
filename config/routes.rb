Tapir::Application.routes.draw do
  devise_for :users

  resources :frames

end
