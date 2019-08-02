require 'test_helper'

class DialogsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dialogs_create_url
    assert_response :success
  end

  test "should get show" do
    get dialogs_show_url
    assert_response :success
  end

end
