require "rails_helper"

RSpec.describe "user can login" do
  scenario "User logs in" do
    user = User.create(email: "cd@gmail.com", password_digest: "newkid")
    visit "/"
    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in "email", :with => "cd@gmail.com"
    fill_in "password", :with => "newkid"
    click_on "Submit"

    expect(current_path).to eq(root_path)
    expect(User.all.first.email).to eq("cd@gmail.com")
  end
end
