class PostsController < ApplicationController
  def top
  end

  def new
    @post = Post.new
  end

  def create
    @post = @current_user.posts.build(post_params)
    if @post.save
      flash.notice = "投稿しました"
      redirect_to post_index_path
    else
      render('post_new')
    end
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :image)
    end

end
