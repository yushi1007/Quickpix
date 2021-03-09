class OrderImagesController < ApplicationController
    before_action :find_order_image, only: [:show, :edit, :destroy, :update]

def index
    @order_images = OrderImage.all
end

def new
    @order_image = OrderImage.new
end

def show
    @order_image = @current_order_image
  end

  def destroy
    @order_image = @current_order_image
    @order_image.destroy
    session[:image_id] = nil
    redirect_to images_path
  end

def create
    order_image = OrderImage.create(order_image_params) 
    redirect_to order_image_path(order_image)
end

def edit

end

def update
    # @order_image = OrderImage.find(params[:id])
    @order_image = OrderImage.update(order_image_params) 
    redirect_to order_image_path(@order_image)
end

def destroy
    @order_image.destroy
    redirect_to order_images_path
end

private
def order_image_params
    params.require(:order_image).permit(:quantity, :image_id, :order_id)
end

def find_order_image
    @order_image = OrderImage.find(params[:id])
end

end
