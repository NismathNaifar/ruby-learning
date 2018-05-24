class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/posts'
    else
      render json: { msg: @post.errors.full_messages }
    end
  end

  def show
  end

  def new
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :body)
  end

end
