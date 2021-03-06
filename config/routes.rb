# frozen_string_literal: true

Rails.application.routes.draw do
  resources :seededsteps, only: %i[index show]
  resources :seededwords, only: %i[index show]
  resources :seededsentences, only: %i[index show]
  resources :games
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
