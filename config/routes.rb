Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies
  resources :users
  resources :user_movies
  resources :reviews


  get '/movies/:id/reviews' => 'movies#reviews'
  get '/profile' => 'users#profile'
  post '/login' => 'auth#create'
  post '/purchase' => 'user_movies#purchase'
end
