class ImagesController < ApplicationController
    def index
        @images = Image.all
    end
    
    def show
        @image = Image.find(params[:id])
        @order = Order.last
        # @users = User.all 
    end

    def new
        @image = Image.new
        @tags = Tag.all
        @users = User.all
    end

    def create
        user = User.find(session[:user_id])
        image = Image.create(image_params) 
        redirect_to user_path(user)
    end

    private

    def image_params
        params.require(:image).permit(:name, :description, :price, :url, :user_id)
    end

end
