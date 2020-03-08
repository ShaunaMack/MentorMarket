# frozen_string_literal: true

Rails.application.routes.draw do
  get '/search', to: 'pages#search', as: 'search_page'

  resources :mentors
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: %i[index show]
  resources :personal_messages, only: %i[new create]
  resources :conversations, only: %i[index show]
  resources :profiles
  resources :mentorships

  root to: 'pages#welcome'
end
