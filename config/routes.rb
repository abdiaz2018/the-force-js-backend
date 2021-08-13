Rails.application.routes.draw do
  resources :force_abilities, only: [:index, :show]
  resources :force_users, except: [:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
