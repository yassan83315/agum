require 'test_helper'

class Admin::SeasonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_seasons_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_seasons_edit_url
    assert_response :success
  end

end
