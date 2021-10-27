Rails.application.routes.draw do
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # [...]
  resources :restaurants do
    # collection
    # /restaurants/...
    collection do
      get :top
      # => get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
    end
    # member
    # /restaurants/:id/...
    member do
      # get 'restaurants/:id/reviews/new' ...
      get :chef
    end

    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: :destroy
  # delete 'reviews/:id' ...
end
