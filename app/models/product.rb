class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :description, length: { in: 200..500 } 

  
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
