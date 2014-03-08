require 'test_helper'

class AmazonControllerTest < ActionController::TestCase
  test "should get amazon_item_show" do
    get :amazon_item_show
    assert_response :success
  end

end
