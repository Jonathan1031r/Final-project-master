class ProductsController < ApplicationController
	def index
		@current_user = current_user
		@products_array = Product.all
		@comments_array = Comment.all.order('created_at DESC').take(5)
		@comments_array_right = Comment.all.order('created_at DESC')[5...11]
		 render "index"
	end

	def post_comments
        comment = Comment.new
       	comment.author_name = params[:author_name]
       	comment.content = params[:content]
       	comment.save
        render json: comment.to_json
	end

	def get_comments
		@comments_array = Comment.all
       
        render json: @comments_array.to_json
	end

private

	def product_params
		params.require(:product).permit(:title, :description, :image, :price)
	end

    def comment_params
    	Rails.logger.debug params.inspect

        # params.require(:comment).permit(:author_name, :content)
    end

end
