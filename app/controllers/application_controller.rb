class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  #自分のアカウントでログインしているか判定
  def logged_in_user
    unless logged_in?
      #もしログインしていなければ、ログイン画面へリダイレクト
      redirect_to login_path
    end
  end

  def logged_in_current_user
    unless current_user?(@user)
      redirect_to login_path
    end
  end
end
