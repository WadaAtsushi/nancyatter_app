module SessionsHelper

    def set_current_user
      if session[:user_id]
        @current_user = User.find_by(id: session[:user_id])
      end
    end

    def set_current_app
      if session[:app_id]
        @current_app = Nancyatterapp.find_by(id: session[:app_id])
      end
    end
end
