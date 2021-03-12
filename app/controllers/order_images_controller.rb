class OrderImagesController < ApplicationController
    before_action :find_order_image, only: [:show, :edit, :update]

def index
    @order_images = OrderImage.all
end

def new
    @order_image = OrderImage.new
end

def show

  end

  def destroy
    Order.last.order_images.destroy_all
    redirect_to order_images_path
  end

  def submit
    Order.last.order_images.destroy_all
    redirect_to orders_path
  end 

def create
    order_image = OrderImage.create(image_id: params[:image_id], order_id: params[:order_id])
    #byebug
    redirect_to order_images_path
end

def edit

end

def update
    # @order_image = OrderImage.find(params[:id])
    @order_image = OrderImage.update(order_image_params) 
    redirect_to order_image_path(@order_image)
end

# def destroy
#     @order_image.destroy
#     redirect_to order_images_path
# end

private
# def order_image_params
#     #byebug
#     params.require(:order_image).permit(:image_id, :order_id)
# end

def find_order_image
    @order_image = OrderImage.find(params[:id])
end

end
