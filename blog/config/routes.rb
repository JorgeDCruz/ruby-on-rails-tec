Rails.application.routes.draw do
  root "trainers#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  get "/trainers", to: "trainer#index"

  resources :articles
end

