class ProductsController < ApplicationController
	def index
		@productsArray = Product.all
		render "index"
	end

end
