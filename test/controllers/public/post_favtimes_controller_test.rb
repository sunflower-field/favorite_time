require "test_helper"

class Public::PostFavtimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_favtimes_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_post_favtimes_edit_url
    assert_response :success
  end

  test "should get show" do
    get public_post_favtimes_show_url
    assert_response :success
  end
end
