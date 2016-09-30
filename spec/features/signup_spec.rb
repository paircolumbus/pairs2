require 'rails_helper'

RSpec.feature "Signup", type: feature do
  scenario "brand new user signs up for an account" do
    visit "/sign_up"
    fill_in "First name", with: 'Pat'
    fill_in "Last name", with: 'Doe'
    fill_in "Username", with: 'pat_doe'
    fill_in "Email", with: 'abc@def.com'
    fill_in "Password", with: 'abcdef1', :match => :prefer_exact
    fill_in "Password confirmation", with: 'abcdef1', :match => :prefer_exact
    select "Beginner", from: 'user[skill_level]'
    click_on "Sign up"

    expect(page.status_code).to eq 200
  end
end
