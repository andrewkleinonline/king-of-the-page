Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'sessions#new'
  root 'main#main'
  
  resources :users
  resources :prompts
  resources :sessions
  resources :responses

end
