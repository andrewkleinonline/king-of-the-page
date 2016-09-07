Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :prompts
  resources :responses
  root 'static_pages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
