require "rails_helper"

RSpec.describe "can filter movies", :js => :true do
  scenario "Can filter movies by buttons" do
    stub_logged_in_user

    fill_in "Title", with: "Shawshank Redemption"
    fill_in "Note", with: "This is my most favorite movie"
    click_on "Create Movie"

    fill_in "Title", with: "Bu"
    fill_in "Note", with: "This is my least favorite movie"
    click_on "Create Movie"

    first('.item').click_on('Mark as Watched')

    expect(page).to have_content("true")
  end
end
