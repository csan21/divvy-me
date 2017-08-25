Rails.application.routes.draw do
  resources :restuarants, only: [:index, :create, :new]
  resources :votes, only: [:create]
  resource :sessions, only: [:new, :create, :destroy]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'restuarants#index'
end
