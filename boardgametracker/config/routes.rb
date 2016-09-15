Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :games
  resources :tags
  resources :comments

  resources :users do
    resources :friends
    get "add_game_to_user_new"
    post "add_game_to_user_create"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'games#index'
end
