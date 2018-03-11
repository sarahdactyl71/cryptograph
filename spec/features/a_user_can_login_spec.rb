require 'rails_helper'

RSpec.feature "User information" do
  before(:each) do
    reset_session!
  end

  it "A user can be created" do
    visit new_user_path

    fill_in "Username", with: 'Finn the Human'
    fill_in "Password", with: 'password'
    click_button "Create Account"

    assert page.has_content?("Welcome Finn the Human")
  end

  it "registered user can login" do
    user = User.create(username: "Jake the Dog", password: "password")

    visit login_path
    fill_in "Username", with: 'user.username'
    fill_in "Password", with: 'password'
    click_button "Login"

    assert page.has_content?("Welcome Jake the Dog")
  end

  it "a registered user can logout" do
    user = User.create(username: "Princess Bubblegum", password: "password")

    visit login_path
    fill_in "Username", with: 'user.username'
    fill_in "Password", with: 'password'
    click_button "Login"

    assert page.has_content?("Welcome Princess Bubblegum")

    click_link "Logout"

    refute page.has_content?("Welcome Princess Bubblegum")
  end

end
