class CartedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :user
  belongs_to :order, optional: :true

  def subtotal
    product.price * quantity
  end
end
