class Product < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :orders
  
  
  def sale_message
    if price <= 1
      "Discount item!"
    elsif price > 1
      "Everyday Value"
    end
  end

  
  def tax 
    price * 0.09
  end

  def total
    tax + price
  end

  def discounted
    if price is < 1
      true
    else 
      false
    end
  end
  
end
