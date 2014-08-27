class WelcomeController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @user = User.new(user_params) 
    
    if @user.save
      render :login
      #redirect_to user_path(@user)
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
