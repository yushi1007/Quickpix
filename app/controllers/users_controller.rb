class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:login, :handle_login]
    def show
      @user = User.find(params[:id])
    end

    def login
      
    end
  
  #  def handle_login
  #     @user = User.find_by(username: params[:username])
  #     if @user && @user.authenticate(params[:password])
  #       redirect_to user_path(@user.id)
  #     else
  #       redirect_to user_path(@user.id)
  #     end
  #   end 
  def handle_login 
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id 
        redirect_to user_path(@user)
    else 
        flash[:errors] = @user.errors.full_messages
        redirect_to login_path
    end 
end

    def logout
        session[:user_id] = nil
        redirect_to login_path
    end

    def new
      @user = User.new
    end

    def create
      user = User.create(user_params) 
      redirect_to user_path(user)
    end

    

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.update(user_params) 
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
