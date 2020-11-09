Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies
  resources :users
  resources :user_movies


  get '/profile' => 'users#profile'
  post '/login' => 'auth#create'
  post '/purchase' => 'users#purchase'
end
