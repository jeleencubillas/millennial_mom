require "test_helper"

class ConfessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get confessions_index_url
    assert_response :success
  end

  test "should get show" do
    get confessions_show_url
    assert_response :success
  end

  test "should get new" do
    get confessions_new_url
    assert_response :success
  end

  test "should get create" do
    get confessions_create_url
    assert_response :success
  end
end
