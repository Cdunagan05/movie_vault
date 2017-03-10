class MoviesController < ApplicationController
  def index
    if current_user != nil
      @movies = current_user.movies.all
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
    params.permit(:title, :note)
  end

  def possible_errors
    {"can't be blank" => "There must be a title!"}
  end
end
