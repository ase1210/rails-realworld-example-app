class Devise::RegistrationsController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      render :create
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :bio, :image)
  end
end
