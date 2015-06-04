Myflix::Application.routes.draw do
  root to: 'pages#index'
  get 'register', to: 'users#new'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'

  resources :users, only:[:create]
  resources :sessions, only:[:create]

  get 'home', to: 'categories#index'
  resources :categories, only: [:show]
  
  resources :videos, only: [:show] do
    collection do 
      get 'search', to: 'videos#search'
    end
  end

  get 'ui(/:action)', controller: 'ui'
end

