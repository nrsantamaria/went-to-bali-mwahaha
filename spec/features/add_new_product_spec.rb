require 'rails_helper'

describe "the new product path" do
  it "creates a product" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit '/'
    click_link 'Sign in'
    fill_in 'email', :with => user.email
    fill_in 'password', :with => user.password
    click_on 'Log in'
    click_on 'Admin'
    fill_in 'product[name]', :with => product.name
    fill_in 'product[description]', :with => product.description
    fill_in 'product[price]', :with => product.price
    attach_file('product[image]', Rails.root + 'spec/support/missing.png')
    click_on 'Submit'
    expect(page).to have_content 'Products'
  end
end
