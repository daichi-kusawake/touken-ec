class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  #ログインしているか判定
  def logged_in_customer
    unless logged_in?
      #もしログインしていなければ、ログイン画面へリダイレクト
      redirect_to login_path
    end
  end
end
