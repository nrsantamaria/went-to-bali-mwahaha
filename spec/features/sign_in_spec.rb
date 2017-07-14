require 'rails_helper'

describe "the sign in a user path" do
  it "signs in a user" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_link 'Sign in'
    fill_in 'email', :with => user.email
    fill_in 'password', :with => user.password
    click_on 'Log in'
    expect(page).to have_content 'Products'
  end
end
