class ImagesController < ApplicationController
    def index
        @images = Image.all
    end
    
    def show
        @image = Image.find(params[:id])
    end

    def new
        @image = Image.new
    end

    def create
        image = Image.create(image_params) 
        redirect_to image_path(image)
    end

    private

    def image_params
        params.require(:image).permit(:name, :description, :price, :url, :user_id)
    end

end
