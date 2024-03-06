module SessionsHelper
  def current_user
    # 現在ログイン中のユーザーを返す
    return unless session[:user_id]

    @current_user ||= User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  # ログイン状態確認
  def current_user?(user)
    # 受け取ったユーザーがログイン中のユーザーと一致するか判定
    user == current_user
  end

  # 顧客がログインしていればTRUE
  def logged_in?
    !current_user.nil?
  end

  # cokieの削除
  def log_out
    session.delete(:user_id)

    # TODO: ヘルパー内でインスタンス変数の参照/代入する場合に警告が発生している
    @current_user = nil
  end
end
