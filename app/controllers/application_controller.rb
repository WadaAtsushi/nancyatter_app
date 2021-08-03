class ApplicationController < ActionController::Base
      include SessionsHelper

      before_action :set_current_user
      before_action :set_current_app
      before_action :set_current_menbur
end
