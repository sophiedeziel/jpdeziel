Rails.application.routes.draw do

  root to: 'pages#index'
  resources :pages
  resources :documents, only: :show
end
