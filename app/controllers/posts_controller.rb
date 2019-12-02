class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_employee!
  def index
    @posts = Post.all
  end

  def show
    @comments = Comment.where(post_id: @post)
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.employee_id = current_employee.id
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.' 
    else
      render :new 
    end
  end

  def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.' 
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :image, :employee_id, :image_cache)
    end
end
