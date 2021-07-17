class UsersController < ApplicationController
  def signin
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "新規登録しました"
      redirect_to root_path      
    else
      render('signin')
    end

  end

  def login_form
  end

  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
