require 'rails_helper'

RSpec.describe "user can logout" do
  scenario "logged in user can logout" do
    stub_logged_in_user

    visit '/'

    click_on "Logout"

    expect(page).to have_content("Sign Up or Login")
  end
end
