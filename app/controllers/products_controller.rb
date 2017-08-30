class ProductsController < ApplicationController
  def all_product_action
    @products = Product.all
    render 'all_product_page.html.erb'
  end
end
