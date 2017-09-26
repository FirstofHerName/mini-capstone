class Supplier < ApplicationRecord
  has_many :products
end

# def product
#   product.where(supplier_id: id)
# end