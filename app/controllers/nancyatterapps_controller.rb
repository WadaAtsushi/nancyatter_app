class NancyatterappsController < ApplicationController
  def top
  end

  def new
    @nancyatterapp = Nancyatterapp.new
  end

  def create
    @nancyatterapp = Nancyatterapp.new(nancyatter_params)
    @nancyatterapp.user_id = @current_user.id

    if @nancyatterapp.save
      session[:app_id] = @nancyatterapp.id
      flash.notice = "アプリ作成しました"
      redirect_to posts_top_path(@nancyatterapp.id)
    else
      flash.notice = "入力が正しくありません"
      render ("nancyatterapp_new")
    end
  end

  def index
    @nancyatterapps = Nancyatterapp.all
  end

  def login
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
    session[:app_id] = @nancyatterapp.id
    redirect_to posts_top_path
  end

  def logout
    session[:app_id] = nil
    flash.notice = 'メインアプリに戻りました'
    redirect_to root_path
  end

  private
    def nancyatter_params
      params.require(:nancyatterapp).permit(:app_name, :main_text, :introduction, :loure, :image, :category_id, :feature_like, :feature_comment, :feature_category, :feature_image) 
    end


end
