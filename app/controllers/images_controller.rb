class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    
  end

  def create
    image = Image.new(
                      product_id: params[:product_id],
                      url: params[:url]
                      )
    image.save
    flash[:success] = "Successfully Created Image"
    redirect_to "/images/#{image.id}"
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    image = Image.find(params[:id])
    image.assign_attributes(
                            product_id: params[:product_id],
                            url: params[:url]
                            )
    image.save
    flash[:success] = "Successfully Updated Image"
    redirect_to "/images/#{image.id}"    
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    flash[:warning] = "Successfully Destroyed Image"
    redirect_to "/images"  
  end
end
