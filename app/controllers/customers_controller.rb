class CustomersController < ApplicationController
  def index
    #顧客一覧
    @customer = Customer.all
  end

  def show
    #顧客詳細表示
    @customer = Customer.find(params[:id])
  end

  def edit
    #編集
    @customer = Customer.find(params[:id])
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
    params.require(:customer).permit(:family_name,:last_name,:family_name_furigana,:last_name_furigana,:email_address,:password)
  end

end
