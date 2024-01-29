class SessionsController < ApplicationController
  def new
  end

  #ログイン処理
  def create
    customer = Customer.find_by(email_address: params[:session][:email_address].downcase)
    if customer && customer.authenticate(params[:session][:password])
    #認証が失敗した場合にFALSEを返す
    #ユーザー存在しない パスワード[TRUE or FALSE] == FALSE
    #有効なユーザー　パスワード[FALSE] == FALSE
    #有効なユーザー　パスワード[TRUE] == TRUE
    log_in customer
    redirect_to customer_path(customer.id)
    else
      #フラッシュメッセージ
      flash.now[:danger] = 'ログイン失敗しました' 
      render 'new',status: :unprocessable_entity
    end
  end

  #ログアウト処理cookieに保存されているユーザー情報を削除
  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

end
