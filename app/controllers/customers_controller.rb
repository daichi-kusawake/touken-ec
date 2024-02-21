class CustomersController < ApplicationController

  #アクション実行前にログインしているか判定
  before_action :logged_in_customer,only:[:edit,:show,:destroy]
  def index
    #顧客一覧
    @customers = Customer.all
  end

  def show
    #顧客詳細表示

    #送られたidを条件にしてmodelから検索する
    @customer = Customer.find(params[:id])
    logged_in_current_customer
  end

  #新規登録用：Customerのインスタンスを作成
  def new
      @customer = Customer.new
  end

  #登録されたユーザーをDBへ送る
  def create
    #インスタンスの生成
    @customer = Customer.new(customer_params)

    if @customer.save
      log_in @customer
      redirect_to root_path
    else
        #turboの場合にバリデーション失敗のエラー表示ができない為、Unprocessable Entityを返すよう指定
        render 'new', status: :unprocessable_entity
    end
  end

  def edit
    #編集
    @customer = Customer.find(params[:id])
    logged_in_current_customer
  end

  def update
    #更新
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to customer_path(customer.id)
  end

  def destroy
    #削除機能
    customer = Customer.find(params[:id])
    customer.destroy
    redirect_to root_path
  end

  private
  def customer_params
    #ストロングパラメータ
    params.require(:customer).permit( :family_name,  :last_name,  :family_name_furigana,
     :last_name_furigana,  :email_address,  :password, :password_confirmation)
  end

end
