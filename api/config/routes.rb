Rails.application.routes.draw do
  resources :todos

  # root to: 'users#login'
  resources :users, only: [:index, :destroy, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  post '/users', to: 'users#create'
  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#destroy'
  get '/users/login/check', to: 'auth#create'

end
