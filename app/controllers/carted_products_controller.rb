class CartedProductsController < ApplicationController

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

  def index
    if current_user
      @carted_products = CartedProduct.all.where("user_id = ? AND status = ?", current_user.id, "carted") 
    else
      redirect_to "/"
    end
    

  end

  
end
