Rails.application.routes.draw do
  
  resources :registrations, only: [:new, :create]
  resources :main

  delete '/logout', to: "main#destroy"

  root to: "registrations#index"
end
