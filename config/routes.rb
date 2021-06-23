Rails.application.routes.draw do
  
  resources :registrations, only: [:index, :new, :create]
  resources :main
  resources :opinions
  resources :profiles

  delete '/logout', to: "main#destroy"

  root to: "opinions#index"
end
