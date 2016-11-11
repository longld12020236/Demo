class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

  def new
    @comment=Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to :back
    end
  end

    private

    	def comment_params
      		params.require(:comment).permit(:content)
    	end
end
