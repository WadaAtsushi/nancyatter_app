require 'test_helper'

class NancyatterappsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get nancyatterapps_top_url
    assert_response :success
  end

  test "should get new" do
    get nancyatterapps_new_url
    assert_response :success
  end

  test "should get create" do
    get nancyatterapps_create_url
    assert_response :success
  end

  test "should get index" do
    get nancyatterapps_index_url
    assert_response :success
  end

end
