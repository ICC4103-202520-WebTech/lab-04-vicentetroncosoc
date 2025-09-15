Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :rooms,        only: [:index, :show]
  resources :guests,       only: [:index, :show]
  resources :reservations, only: [:index, :show]
  resources :services,     only: [:index, :show]

  root "rooms#index"
end
