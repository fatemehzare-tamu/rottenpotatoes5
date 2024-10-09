Rails.application.routes.draw do
  resources :movies do
    member do
      get 'delete'  # This adds the delete confirmation route
    end
  end

  root "movies#index"  # Set the root path to the index action of movies
end
