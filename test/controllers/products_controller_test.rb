require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product = products(:one)
  end

  test "should get new" do
    get new_product_path
    assert_response :success
  end

  test "should get show" do
    get product_path(@product)
    assert_response :success
  end

  test "should get index" do
    get products_path
    assert_response :success
  end
end
