Rails.application.routes.draw do
  root 'pages#home'
  # resources :articles, only: [:show , :index, :new , :create, :edit , :update, :destroy]
  resources :articles
  get 'signup', to:'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
end
