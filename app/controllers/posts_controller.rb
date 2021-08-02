class PostsController < ApplicationController
  def top
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
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
    @posts = Post.all.page(params[:page]).per(10)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    

    if @post.update(post_params)
      flash.notice = "編集しました"
      redirect_to post_show_path(@post.id)
    else
      flash.notice = "編集できませんでした"
      render("posts/edit")
    end
    
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.del_flag = 1
    @post.save
    flash.notice = "削除しました"
    redirect_to post_index_path
  end

  # def create  #テストデータ作成用
    
  #   user_session = session[:user_id]
  #   (1..5).each do |i|
  #     test_user = User.find_by(name: "user#{rand(1..10)}")
  #     category = Category.find_by(post_category: "post_category_#{rand(1..5)}")
  #     p "========="
  #     p category
  #     p "========="
  #     session[:user_id] = test_user.id
  #     test_post = Post.new(
  #       title: "test#{i}", 
  #       content: "test#{i}_content#{i}_hogefugahogefuga", 
  #       image: params[:post][:image],
  #       user_id: session[:user_id],
  #       category_id: category.id
  #     )
  #     p "========="
  #     p test_post
  #     p "========="

  #     test_post.save
  #   end
  #   session[:user_id] = user_session

  #   flash.notice = "投稿しました"
  #   redirect_to post_index_path
  # end

  private
    def post_params
      params.require(:post).permit(:title, :content, :post_image)
    end

end
