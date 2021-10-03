Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users, only: [:show]
  get 'signup', to: 'users#new'
end
