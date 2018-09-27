require "rails_helper"
require "web_helper"

RSpec.feature "Post can be liked", type: :feature do
  scenario "User can sign up, create post and like it" do
    user_sign_up
    click_link "New post"
    fill_in :post_content, with: "test me post"
    click_on "Create Post"
    visit root_path
    click_on "Like"
    expect(page).to have_content("Liked by: Bob")
  end
end
