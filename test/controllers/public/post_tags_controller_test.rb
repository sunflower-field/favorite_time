require "test_helper"

class Public::PostTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_tags_index_url
    assert_response :success
  end

  test "should get show" do
    get public_post_tags_show_url
    assert_response :success
  end
end
