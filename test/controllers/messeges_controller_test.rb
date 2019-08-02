require 'test_helper'

class MessegesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get messeges_new_url
    assert_response :success
  end

  test "should get create" do
    get messeges_create_url
    assert_response :success
  end

  test "should get destroy" do
    get messeges_destroy_url
    assert_response :success
  end

end
