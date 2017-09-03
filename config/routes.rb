Rails.application.routes.draw do
  resources :restaurants, only: %i[index create new]
  resources :votes, only: [:create]
  resource :sessions, only: %i[new create destroy]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'restaurants#index'
end
