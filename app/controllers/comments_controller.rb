class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    # Change format according to client request
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to post_path(@post), notice: 'You can not make a comment with blank. Please write...' }
      end
    end
  end

  def show
    
  end

  private
  # Strong Parameter
  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end
end
