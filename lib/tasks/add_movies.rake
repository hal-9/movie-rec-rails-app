require 'json'
movieData = File.read('app/javascript/completeData.json')

namespace :add_movies do
  desc 'Map movie data from JSON to according db columns'

    task map_movie_data: :environment do
      movieDataHash = JSON.parse(movieData)
      movieDataHash.each do |movie|
        newMovie = Movie.new(date: movie["Date"], name: movie["Name"], year: movie["Year"], letterboxdURI: movie["LetterboxdURI"], rating: movie["Rating"], tmdbID: movie["TmdbID"], genre: movie["Genre"], posterpath: movie["Posterpath"])
        newMovie.save
      end
    end
end
