require "test_helper"

class AthletesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get athletes_show_url
    assert_response :success
  end
end
