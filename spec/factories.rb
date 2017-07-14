FactoryGirl.define do
  factory :user do
    name('Admin')
    email('admin1@email.com')
    password_digest('123456')
    admin true
    id 5
  end

  factory :product do
    name('Beer')
    description('Delicious')
    price('5.50')
    id 5
    avatar File.new(Rails.root + 'spec/support/missing.png')
  end

  factory :order do
    total_price('5.50')
    user_id 5
    id 5
  end


  factory :order_items do
    quantity 1
    product_id 5
    order_id 5
  end
end
