class PostsController < ApplicationController
  def top
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  # def create
  #   @post = @current_menbur.posts.build(post_params)
  #   @post.user_id = @current_user.id
  #   @post.nancyatterapp_id =  @current_app.id

  #   if @post.save
  #     flash.notice = "投稿しました。"
  #     redirect_to post_index_path
  #   else
  #     flash.notice = "投稿失敗しました。"
  #     render('posts/new')
  #   end
  # end

  def create
    user_session = session[:user_id]
    menbur_session = session[:menbur_id]
    app_session = session[:nancyatterapp_id]

    (1..300).each do |i|
        test_menbur = Menbur.all.sample
        test_user = test_menbur.user
        test_app = test_menbur.nancyatterapp
        test_category = test_app.postcategories.all.sample

        session[:user_id] = test_user.id
        session[:menbur_id] = test_menbur.id
        session[:nancyatterapp_id] = test_app.id

        test_post = Post.new(
            title: "post#{i}", 
            content: "psot#{i}_content#{i}_hogefugahogefuga", 
            post_image: params[:post][:post_image],
            user_id: session[:user_id],
            menbur_id: session[:menbur_id],
            postcategory_id: test_category.id,
            nancyatterapp_id: session[:nancyatterapp_id]
        )
        
        test_post.save

    end
    session[:user_id] = user_session
    session[:menbur_id] = menbur_session
    session[:nancyatterapp_id] = app_session

    flash.notice = "投稿しました"
    redirect_to post_index_path
end


  def index
    @posts = Post.where(nancyatterapp_id: @current_app.id).all.page(params[:page]).per(10)
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

  

  private
    def post_params
      params.require(:post).permit(:title, :postcategory_id, :content, :post_image)
    end

end
