require "test_helper"

class CustomersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @customer = customers(:michael)
  end

  test "login whith invaild information" do
    #ログイン用パスへのアクセス
    get login_path
    assert_template 'sessions/new'

    #ログインの検証
    post login_path, params: {session:{email_address: @customer.email_address, password:'password'}}
    assert_redirected_to @customer
    follow_redirect!
  end
end
