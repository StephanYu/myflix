Myflix::Application.routes.draw do
  root to: 'categories#index'
  get 'home', to: 'categories#index'
  resources :categories, only: [:show]
  
  resources :videos, only: [:show] do
    collection do 
      get 'search', to: 'videos#search'
    end
  end

  get 'ui(/:action)', controller: 'ui'
end

