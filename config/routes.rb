Myflix::Application.routes.draw do

  get 'ui(/:action)', controller: 'ui'

  get 'home' => "video#index"
  get 'video' => "video#show"
end
