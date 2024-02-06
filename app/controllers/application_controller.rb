class ApplicationController < ActionController::Base
  include SessionsHelper


  private
  def logged_in_user
    unless logged_in?
      redirect_to login_path
    end
  end

  def logged_in_current_user
    unless current_user?(@user)
      redirect_to login_path
    end
  end
end
