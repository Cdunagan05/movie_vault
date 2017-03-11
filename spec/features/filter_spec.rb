require "rails_helper"

RSpec.describe "can filter movies", :js => :true do
  scenario "Can filter movies by buttons" do
    user = User.create(email: 'matt@gmail.com', password: 'texas')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    movie_1 = Movie.create(title: 'Shawshank', user_id: user.id)


    visit '/'
    visit '/'

    click_on('Mark as Watched')

    expect(page).to have_content("true")
  end
end
