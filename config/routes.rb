Rails.application.routes.draw do

  resources :page_components
  resources :components
  resources :pages

  resources :todos, only: [:create]
  resources :dash, only: [:index]
  resources :demo, only: [:index]

  get 'github_component', to: 'demo#index'

  root to: 'pages#index'
  root to: "application#welcome"
end
