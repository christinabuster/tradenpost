Rails.application.routes.draw do
  resources :categories
  resources :trades
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'trades#index'

  get "/trades", to: "trades#index"
  # Defines the root path route ("/")
end
