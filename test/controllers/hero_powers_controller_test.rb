require "test_helper"

class HeroPowersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hero_powers_create_url
    assert_response :success
  end
end
