class OrdersController < ApplicationController
before_action :authenticate_user!


  def create

    carted_products = current_user.current_cart
    order = order.create(user_id: current_user.id,
    carted_products.update_all(status: "ordered", order_id: order.id)
    order.calculate.totals
    redirect_to "/orders/#{order.id}"

  end

  def show
    @orders = Order.find(params[:id])
      redirect_to '/' unless current_user && current_user.id == @order.user_id
  end
end
