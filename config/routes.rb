Myflix::Application.routes.draw do

  get 'ui(/:action)', controller: 'ui'

  get 'video/:id', to: 'video#show', as: 'video'

  get 'home', to: 'category#index'
  get 'categories/:id', to: 'category#show', as: 'category'
end
