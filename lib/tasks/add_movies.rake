require 'json'
movieData = File.read('app/javascript/completeData.json')

namespace :add_movies do
  desc 'Map movie data from JSON to according db columns'

    task map_movie_data: :environment do
      movie_data_hash = JSON.parse(movieData)
      movie_data_hash.each do |movie|
        new_movie = Movie.find_or_initialize_by(tmdbID: movie["tmdbID"])
        if new_movie.new_record?
          puts 'neuer film'
        else
          puts 'alter film'
        end
        new_movie.update(date: movie["Date"], name: movie["Name"], year: movie["Year"], letterboxdURI: movie["LetterboxdURI"], rating: movie["Rating"], tmdbID: movie["tmdbID"], genre: movie["Genre"], posterpath: movie["PosterPath"])
      end
    end
end
