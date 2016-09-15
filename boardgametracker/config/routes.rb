Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :games
  resources :tags
  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'games#index'
end
