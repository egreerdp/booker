require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should profiles index" do
    get reservations_url
    assert_response :success
  end

  test "should profiles new" do
    get new_reservation_url
    assert_response :success
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { end_time: @reservation.end_time, notes: @reservation.notes, purpose: @reservation.purpose, room_id: @reservation.room_id, start_time: @reservation.start_time, status: @reservation.status, user_id: @reservation.user_id } }
    end

    assert_redirected_to reservation_url(Reservation.last)
  end

  test "should show reservation" do
    get reservation_url(@reservation)
    assert_response :success
  end

  test "should profiles edit" do
    get edit_reservation_url(@reservation)
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { end_time: @reservation.end_time, notes: @reservation.notes, purpose: @reservation.purpose, room_id: @reservation.room_id, start_time: @reservation.start_time, status: @reservation.status, user_id: @reservation.user_id } }
    assert_redirected_to reservation_url(@reservation)
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservation_url(@reservation)
    end

    assert_redirected_to reservations_url
  end
end
