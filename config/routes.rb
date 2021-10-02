Rails.application.routes.draw do
  root 'chatrooms#index'
  get 'login', to: 'sessions#new'
  resources :users, exept: [:new]
  get 'signup', to: 'users#new'
end
