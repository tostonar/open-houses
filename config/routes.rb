Rails.application.routes.draw do
  resources :open_houses, only: [:show]
  resources :properties
  resources :realtors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
