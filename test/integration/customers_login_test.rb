require 'test_helper'

class CustomersLoginTest < ActionDispatch::IntegrationTest
  #ログイン失敗時
  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email_address: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  #ログアウト時
  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { email_address: @customer.email_address,password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @customer
    follow_redirect!
    assert_template 'customer/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", customer_path(@customer)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", customer_path(@customer), count: 0
  end
end
