require 'test_helper'

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get histories_create_url
    assert_response :success
  end

  test "should get update" do
    get histories_update_url
    assert_response :success
  end

end
