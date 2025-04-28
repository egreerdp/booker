require "application_system_test_case"

class RoomStatusesTest < ApplicationSystemTestCase
  setup do
    @room_status = room_statuses(:one)
  end

  test "visiting the index" do
    visit room_statuses_url
    assert_selector "h1", text: "Room statuses"
  end

  test "should create room status" do
    visit room_statuses_url
    click_on "New room status"

    click_on "Create Room status"

    assert_text "Room status was successfully created"
    click_on "Back"
  end

  test "should update Room status" do
    visit room_status_url(@room_status)
    click_on "Edit this room status", match: :first

    click_on "Update Room status"

    assert_text "Room status was successfully updated"
    click_on "Back"
  end

  test "should destroy Room status" do
    visit room_status_url(@room_status)
    click_on "Destroy this room status", match: :first

    assert_text "Room status was successfully destroyed"
  end
end
