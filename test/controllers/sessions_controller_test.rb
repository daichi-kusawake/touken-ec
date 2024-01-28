require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest

  #ログインページへのアクセステスト
  test "should get new" do
<<<<<<< HEAD
    #ログイン用のパスが開けるか確認
    get login_path
=======
    get login_path
    assert_response :success
  end


  test "should get create" do
    post login_path,params: { session: { email_address:    @customer.email_address,
    password: 'password' } }
>>>>>>> ac6a0daa280505c37c9823a344c508fcecd0c1d1
    assert_response :success
  end
end
