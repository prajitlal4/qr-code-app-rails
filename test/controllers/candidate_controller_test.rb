require "test_helper"

class CandidateControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get candidate_dashboard_url
    assert_response :success
  end

  test "should get index" do
    get candidate_index_url
    assert_response :success
  end

  test "should get show" do
    get candidate_show_url
    assert_response :success
  end
end
