require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get :show
    assert_response :success
  end

end
