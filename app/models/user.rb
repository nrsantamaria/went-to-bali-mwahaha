class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :email, :presence => true, :uniqueness => true

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
