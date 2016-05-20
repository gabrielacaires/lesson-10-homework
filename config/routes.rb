Rails.application.routes.draw do
  resources :restaurants
  resources :neighborhoods
  resources :categories

  root 'restaurants#index'
end
