Rails.application.routes.draw do
  root to: 'pages#welcome'

  resources :mentors
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index]
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
  
  get '/search', to: 'pages#search', as: "search_page"

end
