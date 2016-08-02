class PurchasesController < ApplicationController
	def index
		if user_signed_in? 
			@current_user = current_user
			render 'index'
		else
	 		redirect_to "/users/sign_up" 
		end 

			puts 'bananas'
			puts @current_user.inspect
			puts 'apples'
			puts @the_product.inspect
	end

	def show
		@shopping_kart = Purchase.create(user_id: params[:id], product_id: params[:product_id])
		@the_user = User.find_by(id: params[:id])
		@the_product = Product.find_by(id: params[:id])

		

	end

end

