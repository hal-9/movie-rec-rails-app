class MoviesController < ApplicationController
  before_action :find_movies

  def index
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
