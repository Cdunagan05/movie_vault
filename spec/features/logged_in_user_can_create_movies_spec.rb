require 'rails_helper'

RSpec.describe "When a logged in user goes to their movies index" do
  scenario "they can create a movie" do
    user = stub_logged_in_user

    visit '/'

    fill_in "Title", with: "Shawshank Redemption"
    fill_in "Note", with: "This is my favorite movie"
    click_on "Create Movie"

    expect(user.movies.first.title).to eq("Shawshank Redemption")
    expect(user.movies.first.note).to eq("This is my favorite movie")
  end

  scenario "they cannot create a movie without a title" do
    user = stub_logged_in_user

    visit '/'

    fill_in "Note", with: "This is my favorite movie"
    click_on "Create Movie"

    expect(page).to have_content("There must be a title!")
  end
end
