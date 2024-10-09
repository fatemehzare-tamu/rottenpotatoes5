Rails.application.routes.draw do
  resources :movies
  root "movies#index" # Set the root path to the index action of movies
end
