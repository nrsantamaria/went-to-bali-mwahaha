require 'rails_helper'

describe "the sign up a user path" do
  it "creates a user" do
    visit '/'
    click_link 'Sign up'
    fill_in 'user[name]', :with => 'user.name'
    fill_in 'user[email]', :with => 'user.email'
    fill_in 'user[password]', :with => '123456'
    fill_in 'user[password_confirmation]', :with => '123456'
    click_on 'Create Account'
    expect(page).to have_content 'Products'
  end
end
