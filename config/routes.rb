Rails.application.routes.draw do

  resources :pages
  resources :todos, only: [:create]
  resources :dash, only: [:index]
  resources :demo, only: [:index]

  get 'github_component', to: 'demo#index'

  root to: 'pages#index'
end
