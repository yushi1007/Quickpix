class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def new
        @order = Order.new
    end
    
    def show
        @order = Order.find(params[:id])
    end

    def create
        order = Order.create(order_params)
        redirect_to order_path(order)
    end

    private

    def order_params
        params.require(:order).permit(:ordered, :payment_method, :user_id)
    end
end
