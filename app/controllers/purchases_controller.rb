class PurchasesController < ApplicationController

	def create
		@title = params[:product_title]
		@price = params[:product_price]
		@description = params[:product_description]
		if user_signed_in? 
			@current_user = current_user
			render 'index'
		else
	 		redirect_to "/users/sign_up" 
		end 
	end
end

