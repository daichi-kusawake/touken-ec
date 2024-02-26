require "test_helper"

class User::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_path
    assert_response :success
  end

  test "should get show" do
    get products_path(one)
    assert_response :success
  end
end
