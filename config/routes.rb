Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:show, :create] do
    resources :friendships, only: [:index, :show, :create, :destroy]
    resources :bets, only: [:index, :show, :create, :update]
  end

  resources :sessions, only: [:create]
end
