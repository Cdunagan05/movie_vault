require "rails_helper"

RSpec.describe "can edit movies" do
  scenario "User can edit movies" do
    stub_logged_in_user

    fill_in "Title", with: 'Cherry'
    fill_in "Note", with: "Are good"
    click_on "Create Movie"

    expect(current_path).to eq(root_path)
    expect(User.first.movies.count).to eq(1)

    click_on "Edit Movie"

    expect(current_path).to eq(edit_movie_path(User.first.movies.first[:id]))

    fill_in "title", with: 'Boom Boom Bog'
    fill_in "note", with: "Hello"
    click_on "Update Movie"


    expect(page).to have_content("Boom Boom Bog")
    expect(page).to have_content("Hello")
  end
end
