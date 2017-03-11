require 'rails_helper'

RSpec.describe "Movie API" do
  it "edits a movie" do
    user = User.create(email: 'matt@gmail.com', password: 'texas')
    movie_1 = Movie.create(title: "Texas", user_id: user.id)
    movie_2 = Movie.create(title: "Parka", user_id: user.id)

    expect(Movie.count).to eq(2)

    params = {'watched' => 'true',
              'CONTENT_TYPE' => 'application/json',
              'ACCEPT' => 'application/json'}

    patch "/api/v1/movies/#{movie_1.id}.json?", params: params

    expect(Movie.first["watched"]).to eq(true)
  end
end
