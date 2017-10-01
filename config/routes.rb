Rails.application.routes.draw do
  # get '/' => 'users#index'
  root 'users#index'

  resources :users, only: [:index, :create, :show]

  get '/signup' => 'users#new', as: 'new_user'
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/libraries' => 'libraries#index', as: 'libraries'
  get '/libraries/new' => 'libraries#new', as: 'new_library'
  post '/libraries' => 'libraries#create'

  get '/users/:user_id/libraries' => 'library_users#index', as: 'user_libraries'
  post '/libraries/:library_id/users' => 'library_users#create', as: 'library_users'
end 
