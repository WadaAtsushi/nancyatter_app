class PostsController < ApplicationController
  def top
  end

  def new
    @post = Post.new
  end

  def create
    @post = @current_user.posts.build(post_params)

    # (1..10).each do |i|
    #   @post = Post.new(title: "test#{i}", content: "test#{i}_content#{i}", user_id: rand(1..10))
    # end

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
    @post = Post.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :image)
    end

end
