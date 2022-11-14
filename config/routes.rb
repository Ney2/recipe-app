Rails.application.routes.draw do
  resources :recipe_foods, except: %i[update]
  resources :foods, except: %i[update]
  resources :recipes, except: %i[update]
  devise_for :users
  root "home#index"
end
