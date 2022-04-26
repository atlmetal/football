Rails.application.routes.draw do
  resources :stadium
  resources :players
  resources :clubs
  resources :leagues
  resources :federations
  resources :confederations
  resources :football_organizations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
