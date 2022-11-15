Rails.application.routes.draw do
  resources :recipe_foods, except: %i[update edit]
  resources :foods, except: %i[update edit]
   resources :recipes do
    resources :recipe_foods, except: [:edit, :update]
  end
  get 'public_recipes', to: 'recipes#public_recipes'
  devise_for :users
  root "home#index"
end
