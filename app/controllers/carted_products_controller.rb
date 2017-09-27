class CartedProductsController < ApplicationController


  def index
    if current_user && current_user.current_cart.any?
      @carted_products = current_user.current_cart 
    else
      flash[:warning] = "You have no items in your cart."
      redirect_to "/"
    end
  end

  def create
    cart = CartedProduct.new(
                        user_id: current_user.id,
                        product_id: params[:product_id],
                        quantity: params[:quantity],
                        status: "carted"
                        )
    cart.save

    redirect_to "/cart"
  end
  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Product Removed"
    redirect_to "/cart"
  end

  
end
