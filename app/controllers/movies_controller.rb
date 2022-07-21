class MoviesController < ApplicationController
  before_action :find_movies

  def index
    @decades = {"up to 50s": "1900-1959", "60s": "1960-1969", "70s": "1970-1979", "80s": "1980-1989", "90s": "1990-1999", "00s": "2000-2009", "10s": "2010-2019", "20s": "2020-2029"}
    @genres = ['Horror', 'Drama', 'Action', 'Thriller', 'Science Fiction', 'Fantasy', 'Crime', 'Comedy']
  end

  def find_movies
    if params[:filter] == 'by_genre'
      @movies = Movie.all.by_genre(params[:parameter])
    elsif params[:filter] == 'by_decade'
      start_date = params[:parameter][0..3]
      end_date = params[:parameter][5..8]
      @movies = Movie.all.by_decade(start_date, end_date)
    elsif params[:filter] == 'favorite_movies'
      @movies = Movie.all.favorite_movies
    else
      @movies = Movie.all
    end
  end

  def show
  end
end
