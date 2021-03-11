class UsersController < ApplicationController
    skip_before_action :authorized, only: [:login, :handle_login]
    def show
      @user = User.find(params[:id])
      @error_message = flash[:error_message]
    end

    def login
      @error_message = flash[:error_message]
    end
  
  def handle_login 
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:success] = "Welcome back, #{@user.name}!"
        session[:user_id] = @user.id 
        @order = Order.create(ordered: false, user_id: @user.id)
        redirect_to user_path(@user)
    else 
      flash[:error_message] = "Incorrect username or password. Please try again."
      redirect_to login_path
    end 
end

    def logout
        session[:user_id] = nil
        Order.last.destroy
        redirect_to login_path
    end

    def new 
      @error_message = flash[:error_message]
      @user = User.new
    
    end

    def create
      user = User.create(user_params) 
      @error_message = flash[:error_message]
      redirect_to user_path(user)
    end

    def edit
      @user = User.find(params[:id])
      @error_message = flash[:error_message]
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params) 
      @error_message = flash[:error_message]
      redirect_to user_path(@user)
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to images_path
    end

    private

    def user_params
      params.require(:user).permit(:name, :username, :password)
    end
  end
