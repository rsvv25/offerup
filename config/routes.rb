Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "listings#index"
  resources :categories
  resources :contacts
  resources :listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
