require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_comment" do
    get comments_new_comment_url
    assert_response :success
  end

end
