module SessionsHelper

    def set_current_user
        if session[:user_id]
            @current_user = User.find_by(id: session[:user_id])
            # p "============"
            # p session[:user_id]
            # p "============"
            # p @current_user
            # p "==========="
        end
    end
end
