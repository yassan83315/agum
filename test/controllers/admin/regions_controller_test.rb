require 'test_helper'

class Admin::RegionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_regions_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_regions_edit_url
    assert_response :success
  end

end
