Rails.application.routes.draw do
  root to: 'movies#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :movies, only: [:index, :create]

  namespace :api do
    namespace :v1 do
      resources :movies, only: [:update]
    end
  end
end
