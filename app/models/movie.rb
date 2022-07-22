class Movie < ApplicationRecord
  scope :favorites, -> {where(rating: 5)}
  scope :least_favorites, -> {where("rating < ?", 2)}
  scope :by_decade, -> (start_date, end_date) { where(year: start_date..end_date) }
  scope :by_genre, -> (genre) { where("genre like?", "%#{genre}%")}
end
