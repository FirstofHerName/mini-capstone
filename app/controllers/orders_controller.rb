class OrdersController < ApplicationController

def new

end

  def create


  if @carted_products = CartedProduct.all.where("user_id = ? AND status = ?", current_user.id, "carted") 



    order = Order.new(
                        user_id: current_user.id
                        )
    order.save
    
    redirect_to "/orders/#{order.id}"

  end

  def show
    @orders = Order.find(params[:id])

  end
end
