Rails.application.routes.draw do
  resources :restaurants
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
