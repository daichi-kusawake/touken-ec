require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    #ログイン用のパスが開けるか確認
    get login_path
    assert_response :success
  end
end
