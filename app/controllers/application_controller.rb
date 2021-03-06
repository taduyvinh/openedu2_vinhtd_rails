class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def logged_in_user
    unless logged_in?
      store_location
      flash[:error] = t "pls_log_in"
      redirect_to login_path
    end
  end
end
