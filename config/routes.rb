Rails.application.routes.draw do
  # get 'movies/index'
  get "/movies", to: "movies#index"
end
