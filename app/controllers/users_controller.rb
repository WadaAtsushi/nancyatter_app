class UsersController < ApplicationController
  def signin
    @user = User.new
  end

  # def create #テストデータ作成用
  #   (11..20).each do |i|
  #     test_user = User.new(name: "user#{i}", email: "user#{i}@test.com", password: "user#{i}")
  #     test_user.save
  #   end
  #   flash[:notice] = "test登録しました"
  #   redirect_to root_path      
  #   end
  # end

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

  def index
    @users = User.all
  end


  def login
    # ログイン処理はsessionで実行
  end

  def login_form
    # ログイン処理はsessionで実行
  end

  def logout
    # ログイン処理はsessionで実行
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
  private
    def login_params
      params.require(:user).permit(:email, :password) 
    end
end
