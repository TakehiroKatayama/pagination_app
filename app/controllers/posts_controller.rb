class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order(id: :DESC).page(params[:page]).per(Post::PER_PAGE)
  end

  def create
    @post = Post.create!(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
