require 'rails_helper'

RSpec.feature "a user can log in" do
  user = User.create(username: "Sarah", password: "password")

  visit login_path
  fill_in "Username", with: 'user.username'
  fill_in "Password", with: 'password'
  click_button "Login"

  assert page.has_content?("Welcome Sarah")

  click_link "Logout"

  refute page.has_content?("Welcome Sarah")
end
