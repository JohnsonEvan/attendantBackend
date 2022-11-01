require "test_helper"

class AttendantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendant = attendants(:one)
  end

  test "should get index" do
    get attendants_url
    assert_response :success
  end

  test "should get new" do
    get new_attendant_url
    assert_response :success
  end

  test "should create attendant" do
    assert_difference("Attendant.count") do
      post attendants_url, params: { attendant: { email: @attendant.email, name: @attendant.name } }
    end

    assert_redirected_to attendant_url(Attendant.last)
  end

  test "should show attendant" do
    get attendant_url(@attendant)
    assert_response :success
  end

  test "should get edit" do
    get edit_attendant_url(@attendant)
    assert_response :success
  end

  test "should update attendant" do
    patch attendant_url(@attendant), params: { attendant: { email: @attendant.email, name: @attendant.name } }
    assert_redirected_to attendant_url(@attendant)
  end

  test "should destroy attendant" do
    assert_difference("Attendant.count", -1) do
      delete attendant_url(@attendant)
    end

    assert_redirected_to attendants_url
  end
end
