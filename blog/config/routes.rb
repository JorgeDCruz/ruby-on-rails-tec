Rails.application.routes.draw do
  root "main#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  get "/trainers", to: "trainers#index"
  
  get "/catch", to: "catch#index"
  post "/catch", to: "catch#create"
  get "/catch/fled", to: "catch#fled"

  resources :articles
end

