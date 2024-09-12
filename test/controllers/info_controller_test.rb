require "test_helper"

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get meet_us" do
    get info_meet_us_url
    assert_response :success
  end
end
