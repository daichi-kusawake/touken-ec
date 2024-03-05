require "test_helper"

class User::ProductsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product = products(:one)
  end
  test "should get index" do
    get products_path
    assert_response :success
  end

  test "should get show" do
    get products_path(@product)
    assert_response :success
  end
end
