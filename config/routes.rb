Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [ :create, :index, :new, :show ] do
    resources :reviews, only: [ :create, :new ]
  end
end

# get 'restaurants', to: 'restaurants#index'

# get 'restaurants/new', to: 'restaurants#new'
# post 'restaurants', to: 'restaurants#create'

# get 'restaurants/:id', to: 'restaurants#show'

# get 'restaurants/:id/reviews/new', to: ''
