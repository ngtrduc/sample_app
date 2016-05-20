class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		#dieu khien luong neu save user thanh cong
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
  def user_params
	params.require(:user).permit(:user_name,:name, :email, :password, :password_confirmation)
  end
end
