Rails.application.routes.draw do
  root "main#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  get "/trainers", to: "trainers#index"

  resources :articles
end

