Rails.application.routes.draw do
  resources :recipe_foods, except: %i[update]
  resources :foods, except: %i[update]
  resources :recipes, except: %i[update]
  #render public recipes
  get 'public_recipes', to: 'recipes#public_recipes'
  devise_for :users
  root "home#index"
end
