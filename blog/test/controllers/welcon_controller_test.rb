require 'test_helper'

class WelconControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcon_index_url
    assert_response :success
  end

end
