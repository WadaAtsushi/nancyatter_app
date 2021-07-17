require 'test_helper'

class ApricationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aprications_new_url
    assert_response :success
  end

  test "should get admin" do
    get aprications_admin_url
    assert_response :success
  end

  test "should get top" do
    get aprications_top_url
    assert_response :success
  end

end
