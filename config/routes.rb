Rails.application.routes.draw do
  resources :recipe_foods
  resources :foods
  resources :recipes
  devise_for :users
  root "home#index"
end
