require 'test_helper'

class PhotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phots_index_url
    assert_response :success
  end

end
