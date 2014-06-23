class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_param)
  	if @user.save
  		redirect_to product_url, :notice => "Signed In"
  	else
  		render :new
  	end
  end

  private

  def user_params
  	param.require(:user).permit(:password, :email, :password_confirmation)
  end
end
