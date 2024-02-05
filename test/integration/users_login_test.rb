require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "login whith invaild information" do
    #ログイン用パスへのアクセス
    get login_path
    assert_template 'sessions/new'

    #ログインの検証
    post login_path, params: {session:{email_address: @user.email_address, password:'password'}}
    assert_redirected_to @user
    follow_redirect!
  end
end
