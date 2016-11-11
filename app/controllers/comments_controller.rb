class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
    @comment=Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.micropost_id = params[:micropost_id]
    if @comment.save
      redirect_to :back
    end
  end

  def new
    @comment=Comment.all
  end

    private

    	def comment_params
      		params.require(:comment).permit(:content)
    	end
end
