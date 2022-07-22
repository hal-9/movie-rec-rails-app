Rails.application.routes.draw do
  root "movies#index"
  get "/movies/:filter/:parameter", to: "movies#index", as: :movies_filter
  get "/movies/:filter", to: "movies#index", as: :movies_favorites
end
