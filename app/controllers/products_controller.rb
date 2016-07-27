class ProductsController < ApplicationController
	def index
		@current_user = current_user
		@productsArray = Product.all
		render "index"
	end

end
