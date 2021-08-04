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
      session[:nancyatterapp_id] = @nancyatterapp.id
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
    session[:nancyatterapp_id] = @nancyatterapp.id
    menbur = Menbur.find_by(user_id: @current_user, nancyatterapp_id: @nancyatterapp.id)
    if menbur
      session[:menbur_id] = menbur.id
    end
    redirect_to posts_top_path(@nancyatterapp.id)
  end

  def logout
    session[:nancyatterapp_id] = nil
    session[:menbur_id] = nil
    flash.notice = 'メインアプリに戻りました'
    redirect_to root_path
  end


  private
    def nancyatter_params
      params.require(:nancyatterapp).permit(:app_name, :main_text, :introduction, :loure, :app_image, :appcategory_id, :feature_like, :feature_comment, :feature_category, :feature_image) 
    end


end
