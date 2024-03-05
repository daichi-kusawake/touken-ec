class UsersController < ApplicationController
  # アクション実行前にログインしているか判定
  before_action :logged_in_user, only: [:edit, :show, :destroy]

  def index
    @users = User.all
  end

  def show
    # 顧客詳細表示

    # 送られたidを条件にしてmodelから検索する
    @user = User.find(params[:id])
    logged_in_current_user
  end

  # 新規登録用：Userのインスタンスを作成
  def new
    @user = User.new
  end

  def edit
    # 編集
    @user = User.find(params[:id])

    redirect_to login_path unless current_user?(@user)
  end

  # 登録されたユーザーをDBへ送る
  def create
    # インスタンスの生成
    @user = User.new(user_params)

    if @user.save
      log_in @user
      flash[:success] = 'アカウントを作成しました'
      redirect_to root_path
    else
      # turboの場合にバリデーション失敗のエラー表示ができない為、Unprocessable Entityを返すよう指定
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    # 更新
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdraw
    @user = User.find(params[:id])
    @user.update_attribute(:account_status, false)
    log_out
    flash[:info] = '退会しました'
    redirect_to root_path
  end

  private

  def user_params
    # ストロングパラメータ
    params.require(:user).permit(:family_name, :last_name, :family_name_furigana,
                                 :last_name_furigana, :email_address, :password, :password_confirmation, :postal_code, :address, :account_status)
  end
end
