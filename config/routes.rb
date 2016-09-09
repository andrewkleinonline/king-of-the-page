Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'sessions#new'
  root 'main#main'

  get '/leaderboard', to: 'main#leaderboard'
  get '/pastdecrees', to: 'prompts#index'

  resources :users
  resources :prompts
  resources :sessions, only: [:new, :destroy]
  resources :responses
  resources :main

  post '/response/:id/vote' => 'responses#vote', as: :vote

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end
