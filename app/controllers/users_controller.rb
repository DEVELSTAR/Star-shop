class UsersController < ApplicationController
    before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
	end

	def edit
      @user = User.find(params[:id])
	end

	def update
	  current_user.update(user_params)
	  redirect_to current_user
	end

	private

	def user_params
	  params.require(:user).permit(:name, :bio, :street, :phone, :city, :country, :email)
	end
end