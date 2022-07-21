Rails.application.routes.draw do
  root "movies#index"
  get "/movies/:filter/:parameter", to: "movies#index", as: :movies_filter
end
