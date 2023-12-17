require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get candidate" do
    get pages_candidate_url
    assert_response :success
  end

  test "should get business" do
    get pages_business_url
    assert_response :success
  end
end
