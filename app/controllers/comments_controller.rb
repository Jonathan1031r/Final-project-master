class CommentsController < ApplicationController
	def index
        comments = Comment.all
        render json: comments
    end


    def create
        new_comment = Comment.create(comment_params)
        render json: comment 
    end


    def update    
        comment = Comment.find_by(id: params[:id])

        comment.update(comment_params)
        render json: comment    
    end
  
private

    def comment_params
        params.require(:comment).permit(:text)
    end
end

