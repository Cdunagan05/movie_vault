class Api::V1::MoviesController < ApplicationController
  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      render json: @movie
    else
      render json: @movie.erros.full_messages, status: 500
    end
  end

  private

  def movie_params
    params.permit(:watched)
  end
end
