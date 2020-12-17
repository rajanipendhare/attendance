require 'test_helper'

class PresentiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presenties_new_url
    assert_response :success
  end

  test "should get edit" do
    get presenties_edit_url
    assert_response :success
  end

end
