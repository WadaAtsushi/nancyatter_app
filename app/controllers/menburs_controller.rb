class MenbursController < ApplicationController
  def new
    @menbur = Menbur.new
  end

  def create
    @menbur = Menbur.new(menbur_params)
    @menbur.user_id = @current_user.id
    @menbur.app_id = @current_app.id


    
    p "========="
    p params
    p "========="
    p @menbur
    p @menbur.user_id
    p @menbur.app_id
    p @menbur.profile_image.url
    p "========="

    if @menbur.save
      session[:menbur_id] = @menbur.id
      flash.notice = "新規メンバー登録しました"
      redirect_to posts_top_path(@current_app.id)
    else
      render('menbur_new')
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

  private
    def menbur_params
      params.require(:menbur).permit(:nickname, :profile, :profile_image)
    end

end
