class MoviesController < ApplicationController
  def index
    @sort_column = params[:sort] || 'title'
    @sort_direction = params[:direction] || 'asc'
    
    @movies = Movie.order("#{@sort_column} #{@sort_direction}")
  end

  private

  def sort_direction
    @sort_direction == 'asc' ? 'desc' : 'asc'
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  # Add other actions (edit, update, destroy) as necessary

  private

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end
