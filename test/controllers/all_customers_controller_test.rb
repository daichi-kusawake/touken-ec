require "test_helper"

class AllCustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_customers_index_url
    assert_response :success
  end
end
