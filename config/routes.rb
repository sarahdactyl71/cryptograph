Rails.application.routes.draw do
  root 'welcome#index'

  resources :users, only: [:new, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
