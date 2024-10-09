class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  
    if params[:sort].present? && params[:direction].present?
      @movies = @movies.order("#{params[:sort]} #{params[:direction]}")
    end
  end
  




  #def index
    #@sort_column = params[:sort] || 'title'
    #@sort_direction = params[:direction] || 'asc'
    
    #@movies = Movie.order("#{@sort_column} #{@sort_direction}")
  #end

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
      redirect_to movies_path, notice: 'Movie was successfully created.'
    else
      render 'new'
    end
  end


  def edit
    @movie = Movie.find(params[:id])
  end


  # Add other actions (edit, update, destroy) as necessary
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  
  private

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end
