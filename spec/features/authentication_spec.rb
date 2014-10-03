require 'rails_helper'

feature "registration" do
  scenario "user can see homepage" do
    visit "/"
    expect(page).to have_content("Rantly")
    expect(page).to have_content("Let it all out")
  end

  scenario "user can visit the registration page" do
    visit "/"
    click_link "JOIN"
    expect(page).to have_content("Register")
    expect(page).to have_content("Username")
  end

  scenario "user can fill out the registration form, click submit, and return to the root path" do
    visit "/"
    click_link "JOIN"
    fill_in "Username", :with => "pgrunde"
    fill_in "Password", :with => "password123"
    fill_in "First name", :with => "Peter"
    fill_in "Last name", :with => "Grunde"
    fill_in "Bio", :with => "biography"
    choose "Daily"
    click_button "Register"
    expect(page).to have_content("Rantly")
    expect(page).to have_content("Thanks for registering!")
  end
end