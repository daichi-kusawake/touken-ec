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
    redirect_to root_path
  end

  def edit
    #編集
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params.merge(appraisal_document_id: params[:product][:appraisal_document_id]))

    if @product.save
      flash[:success] = "商品登録しました"
      #ルートパスへリダイレクト
      redirect_to root_path
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
    params.require(:product).permit(:product_name,:tax_exluded_price,:description,:article_category_id,:article_id,:appraisal_document_id, :country_id,:era_id,:sign_id,:sales_status)
  end
end