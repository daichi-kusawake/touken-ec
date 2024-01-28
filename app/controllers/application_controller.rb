class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  #自分のアカウントでログインしているか判定
  def logged_in_customer
    if logged_in?  && current_customer?(:customer)
      #もしログインしていなければ、ログイン画面へリダイレクト
    else
      redirect_to login_path
    end
  end
end
