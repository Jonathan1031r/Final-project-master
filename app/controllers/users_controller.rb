class UsersController < ApplicationController

	def last_will
		@current_user = current_user

		@current_user.update!(user_params)

		redirect_to products_path

	end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar)
	end
end



