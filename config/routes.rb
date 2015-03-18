Rails.application.routes.draw do

  root 'visitors#home'

  get 'sign-up', to: 'users#new', as: :sign_up
  get 'sign-in', to: 'sessions#new', as: :sign_in
  delete 'sign-out', to: 'sessions#destroy', as: :sign_out
  
  resources :users
  resources :sessions

end
