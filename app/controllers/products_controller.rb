class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def show
    #送られたidを条件にしてmodelから検索する
    @product = Product.find(params[:id])
  end

  def index
    #商品一覧
    @products = Product.all
  end

  def destroy
    #削除
    product = Product.find(params[:id])
    product.destroy

    #ルートパスへリダイレクト
    redirect_to products_path
  end

  def edit
    #編集
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params.merge(product_category_id: params[:product][:product_category_id]))

    if @product.save
      flash[:success] = "商品登録しました"
      #ルートパスへリダイレクト
      redirect_to products_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    #更新
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to product_path(product.id)
  end

  private
  def product_params
    #ストロングパラメータ
    params.require(:product).permit(:product_name,:tax_excluded_price,:description,
    :product_category_id,:article,:appraisal_document, :country,:era, :era_name, :sign, :sales_status , :image, :image_cache,:content,images: [])
  end
end
