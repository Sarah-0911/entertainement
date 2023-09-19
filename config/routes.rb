Rails.application.routes.draw do
  root to: "restaurants#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index show new create destroy] do
    resources :reviews, only: %i[create destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
