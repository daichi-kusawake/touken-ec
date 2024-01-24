module SessionsHelper

  #ログイン時
  def log_in(customer)
    #送られたidを条件としてログインする
    session[:customer_id] = customer.id
  end

  #ページ遷移時
  def current_customer
    #現在ログイン中のユーザーを返す
    if session[:customer_id]
      @current_customer ||= Customer.find_by(id: session[:user_id])
    end
  end

  #ログイン状態確認
  def current_customer?(customer)
    #受け取ったユーザーがログイン中のユーザーと一致するか判定
    customer == current_customer
  end

  #顧客がログインしていればTRUE
  def logged_in?
    !current_customer.nil?
  end

  #cookieの削除
  def log_out
    session.delete(:customer_id)
    @current_customer = nil
  end
end
