class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  before_action :set_comment, only: [:destroy]
  before_action :authorize_user, only: [:destroy]


  def create

  	@comment = Comment.new(comment_params)
  	@comment.user = current_user
  	@comment.save
<<<<<<< HEAD
    @post = @comment.post
=======
  	return redirect_to posts_path
>>>>>>> 9c85a46a125b76c917caa1a48018fc6aad094960

  end

  def destroy
<<<<<<< HEAD
  	@comment_id = @comment.id

  	@comment.destroy
=======
  	@post = @comment.post

  	@comment.destroy
  	return redirect_to posts_path
>>>>>>> 9c85a46a125b76c917caa1a48018fc6aad094960
  end

  private

  def comment_params
  	params.require(:comment).permit(:post_id, :content)
  end

  def set_comment
  	@comment = Comment.find(params[:id])
  end

  def authorize_user
  	if @comment.user != current_user
  		return redirect_to root_path
  	end
  	return true

  end
end
