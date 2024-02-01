class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  #自分のアカウントでログインしているか判定
  def logged_in_customer
    unless logged_in?
      #もしログインしていなければ、ログイン画面へリダイレクト
      redirect_to login_path
    end
  end

  def logged_in_current_customer
    unless current_customer?(@customer)
      redirect_to login_path
    end
  end
end
