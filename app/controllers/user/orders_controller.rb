class User::OrdersController < ApplicationController
  # アクション実行前にログインしているか判定
  before_action :logged_in_user, only: %i[new confirm index show]

  def index
    @orders = Order.where(user_id: current_user.id).order(created_at: :desc).page(params[:page]).per(5)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @product = Product.find(params[:format])
    @order = Order.new
  end

  def complete
  end

  def confirm # rubocop:disable Metrics/AbcSize
    @product = Product.find(params[:product_id])
    @order = Order.new(user_id: current_user.id, product_id: params[:product_id], payment_methods: params[:payment_methods],
                       shipping_fee: Constants::SHIPPING_FEE)

    # 請求金額の計算
    @order.billing_amount = ((@product.tax_excluded_price * Constants::SALES_TAX_RATE) + Constants::SHIPPING_FEE).floor

    # 配送先の判別(０：登録している住所から変更なし、１:新規宛先を登録)
    address_type = params[:address_type]

    case address_type
    when '0'
      @order.delivery_postal_code = current_user.postal_code
      @order.delivery_address = current_user.address
      @order.addressee = current_user.family_name + current_user.last_name
    when '1'
      if params[:new_post_code] == ''
        flash.now[:danger] = '配送先の郵便番号を入力してください'
        render 'new', status: :unprocessable_entity
      elsif params[:new_address] == ''
        flash.now[:danger] = '配送先の住所を入力してください'
        render 'new', status: :unprocessable_entity
      elsif params[:new_name] == ''
        flash.now[:danger] = '配送先の宛名を入力してください'
        render 'new', status: :unprocessable_entity
      else
        @order.delivery_postal_code = params[:new_post_code]
        @order.delivery_address = params[:new_address]
        @order.addressee = params[:new_name]
      end
    end
    @order.save
  end

  def create
  end
end
