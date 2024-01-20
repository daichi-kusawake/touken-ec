class CustomersController < ApplicationController
  def index
    #顧客一覧
    @customer = Customer.all
  end

  def show
    #顧客詳細表示
    #v送られてidをmodelから検索する
    @customer = Customer.find(params[:id])
  end


end
