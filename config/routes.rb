Rails.application.routes.draw do
  root 'pages#home'
  # resources :articles, only: [:show , :index, :new , :create, :edit , :update, :destroy]
  resources :articles
  get 'signup', to:'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
