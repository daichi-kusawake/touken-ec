require "test_helper"

class CusutomersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cusutomers_new_url
    assert_response :success
  end
end
