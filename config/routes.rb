Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  resources :posts, only: [:show, :index]
  namespace :admin do
    resources :posts, except: [:show, :index]

  end
end
