require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  before_action :forbid_login_user, {only: [:top]}
    test "should get top" do
      get home_top_url
      assert_response :success
    end

end
