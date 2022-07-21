class Movie < ApplicationRecord
  scope :favorite_movies, -> {where(rating: 5)}
  scope :least_favorite_movies, -> {where(rating: 1)}
  scope :by_decade, -> (start_date, end_date) { where(year: start_date..end_date) }
  scope :by_genre, -> (genre) { where("genre like?", "%#{genre}%")}
end
