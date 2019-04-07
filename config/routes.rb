Rails.application.routes.draw do
  resources :tickets
  get 'home/index'
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'register', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
