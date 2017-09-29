class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_products

  validates :email, uniqueness: true
  

  def current_cart
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
  end
end
