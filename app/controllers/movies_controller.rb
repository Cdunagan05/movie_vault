class MoviesController < ApplicationController
  def index
    if current_user != nil
      @movies = if params[:tag]
        Movie.tagged_with(params[:tag])
      else
        @movies = current_user.movies.all
      end
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id].to_i)
    if movie.update(movie_params)
      flash[:success] = "Update Successful!"
      redirect_to root_path
    else
      error = movie.errors.messages.first[1][0]
      flash[:error] = possible_errors[error]
      redirect_to edit_movie_path(movie)
    end
  end

  def create
    movie = current_user.movies.create(movie_params)
    if movie.save
      flash[:success] = "Movie successfully created!"
      redirect_to root_path
    else
      error = movie.errors.messages.first[1][0]
      flash[:notice] = possible_errors[error]
      redirect_to root_path
    end
  end

  private

  def movie_params
    params.permit(:title, :note, :tag_list)
  end

  def possible_errors
    {"can't be blank" => "There must be a title!"}
  end
end
