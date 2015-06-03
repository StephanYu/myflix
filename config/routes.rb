Myflix::Application.routes.draw do
  root to: 'pages#index'
  get 'register', to: 'users#new'
  get 'signin', to: 'sessions#new', as: :sign_in

  resources :users, only:[:create]

  get 'home', to: 'categories#index'
  resources :categories, only: [:show]
  
  resources :videos, only: [:show] do
    collection do 
      get 'search', to: 'videos#search'
    end
  end

  get 'ui(/:action)', controller: 'ui'
end

