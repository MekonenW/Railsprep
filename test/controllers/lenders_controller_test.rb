require 'test_helper'

class LendersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lenders_index_url
    assert_response :success
  end

  test "should get new" do
    get lenders_new_url
    assert_response :success
  end

  test "should get show" do
    get lenders_show_url
    assert_response :success
  end

  test "should get create" do
    get lenders_create_url
    assert_response :success
  end

  test "should get update" do
    get lenders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lenders_destroy_url
    assert_response :success
  end

end
