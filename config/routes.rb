Rails.application.routes.draw do
  resources :restuarants, only: [:index, :create, :new]
  resources :votes, only: [:create]
  resource :sessions, only: [:new, :create, :destroy]

  root 'restuarants#index'
end
