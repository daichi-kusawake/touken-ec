class Admin::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params.merge(product_category_id: params[:product][:product_category_id]))

    if @product.save
      flash[:success] = '商品登録しました'
      redirect_to admin_products_path
    else
      # turboの場合にバリデーション失敗のエラー表示ができない為、Unprocessable Entityを返すよう指定
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    update_params = product_params

    update_params[:images] -= params[:product][:delete_images] if params[:product][:delete_images]

    # FIXME: 編集画面で複数の画像を追加しようと通信が重くなる
    if product.update(update_params)
      flash[:success] = '更新しました'
    else
      flash[:danger] = '更新失敗'
    end

    redirect_to admin_product_path(product.id)
  end

  def destroy
    # 削除
    product = Product.find(params[:id])
    product.destroy

    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :tax_excluded_price, :description,
                                    :product_category_id, :article, :appraisal_document, :country, :era,
                                    :era_name, :sign, :sales_status, :content, images: [])
  end
end
