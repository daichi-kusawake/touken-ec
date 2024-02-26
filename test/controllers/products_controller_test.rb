require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product = products(:one)
  end

  test 'should get new' do
    get new_admin_product_path
    assert_response :success
  end

  test 'should get show' do
    get admin_product_path(@product)
  end

  test 'should get index' do
    get admin_products_path
    assert_response :success
  end
end
