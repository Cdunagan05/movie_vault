require 'rails_helper'

RSpec.describe "guest can sign up" do
  scenario "guest can sign up if they dont have an account" do
    visit '/'

    click_on "Sign Up"

    expect(current_path).to eq(signup_path)

    fill_in "user_email", with: "chase@gmail.com"
    fill_in "user_password", with: "newkid"
    fill_in "user_password_confirmation", with: "newkid"
    click_on "Create User"

    expect(current_path).to eq(root_path)
    expect(User.all.first.email).to eq("chase@gmail.com")
  end

  scenario "guess cannot sign up if they dont enter the same password" do
    visit '/'

    click_on "Sign Up"

    expect(current_path).to eq(signup_path)

    fill_in "user_email", with: "chase@gmail.com"
    fill_in "user_password", with: "newkid"
    fill_in "user_password_confirmation", with: "oldkid"
    click_on "Create User"

    expect(current_path).to eq(signup_path)
    expect(page).to have_content("Your passwords do not match!")
  end
end
