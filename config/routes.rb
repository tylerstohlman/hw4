Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :places
  resources :activities
  resources :posts
  root to: "places#index"
end
