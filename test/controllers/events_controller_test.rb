require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get events_index_url
    assert_response :success
  end


  # test "the truth" do
  #   assert true
  # end

end
