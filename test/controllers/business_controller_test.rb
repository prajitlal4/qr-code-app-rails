require "test_helper"

class BusinessControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get business_dashboard_url
    assert_response :success
  end

  test "should get index" do
    get business_index_url
    assert_response :success
  end

  test "should get show" do
    get business_show_url
    assert_response :success
  end
end
