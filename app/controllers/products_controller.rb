class ProductsController < ApplicationController
   before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy] 

    def index

    @cart_count= current_user.current_cart.cart_count
    
    @products = Product.all

    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    discount_amount = params[:discount]
    category = params[:category]  

    if discount_amount
      @products = @products.where("price < ?", discount_amount)
    end

    if sort_attribute && order_attribute
      @products = @products.order({sort_attribute => order_attribute})
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
    
    if category
      @products = Category.find(category).products
    end

  end

  def new
    @suppliers = Supplier.all
    @product = Product.new

    end
  end

  def create
    @product = Product.new(
                        name: params[:name],
                        price: params[:price],
                        image: params[:image],
                        description: params[:description]
                        )
    if @product.save
    flash[:sucess] = "Product sucessfully added"
    redirect_to "/products/#{@product.id}"
  else
    @suppliers = Supplier.all
    @errors = @product.errors.full_messages
    render "new.html.erb"
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    product.assign_attributes(
                        name:params[:name],
                        price: params[:price],
                        image: params[:image],
                        description: params[:description]
                        )

    if @product.save
    flash[:sucess] = "Product sucessfully updated"
    redirect_to "/products/#{ product.id}"
  else
    @suppliers = Supplier.all
    @errors = @product.errors.full_messages
    render "new.html.erb"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "Product sucessfully destroyed"
    redirect_to "/products"
  end


end
