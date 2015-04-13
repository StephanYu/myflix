Myflix::Application.routes.draw do
  root to: 'categories#index'
  get 'home', to: 'categories#index'
  # get 'categories/:id', to: 'category#show', as: 'category'
  resources :categories, only: [:show]
  # get 'video/:id', to: 'video#show', as: 'video'
  resources :videos, only: [:show] do
    collection do 
      get 'search', to: 'videos#search'
    end
  end

  get 'ui(/:action)', controller: 'ui'
end

