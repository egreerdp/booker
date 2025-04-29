require "test_helper"

class RoomStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_status = room_statuses(:one)
  end

  test "should profiles index" do
    get room_statuses_url
    assert_response :success
  end

  test "should profiles new" do
    get new_room_status_url
    assert_response :success
  end

  test "should create room_status" do
    assert_difference("RoomStatus.count") do
      post room_statuses_url, params: { room_status: {} }
    end

    assert_redirected_to room_status_url(RoomStatus.last)
  end

  test "should show room_status" do
    get room_status_url(@room_status)
    assert_response :success
  end

  test "should profiles edit" do
    get edit_room_status_url(@room_status)
    assert_response :success
  end

  test "should update room_status" do
    patch room_status_url(@room_status), params: { room_status: {} }
    assert_redirected_to room_status_url(@room_status)
  end

  test "should destroy room_status" do
    assert_difference("RoomStatus.count", -1) do
      delete room_status_url(@room_status)
    end

    assert_redirected_to room_statuses_url
  end
end
