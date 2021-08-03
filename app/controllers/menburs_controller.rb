class MenbursController < ApplicationController
  def new
    @menbur = Menbur.new
  end

  def create
    @menbur = Menbur.new(menbur_params)
    @menbur.user_id = @current_user.id
    @menbur.nancyatterapp_id = @current_app.id

    if @menbur.save
      flash.notice = "新規メンバー登録しました"
      redirect_to posts_top_path(@current_app.id)
    else
      render('menbur_new')
    end
  end

  def index
    @menburs = Menbur.all
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
