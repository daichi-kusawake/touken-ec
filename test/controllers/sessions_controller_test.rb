require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest

  #ログインページへのアクセステスト
  test "should get new" do
    get login_path
    assert_response :success
  end


  test "should get create" do
    post login_path,params: { session: { email_address:    @customer.email_address,
    password: 'password' } }
    assert_response :success
  end
end
