Rails.application.routes.draw do
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
      get :chef
    end

    resources :reviews, only: %i[new create]
  end

  # get 'restaurants/:id/reviews/new'
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
