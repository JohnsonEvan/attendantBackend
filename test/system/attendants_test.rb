require "application_system_test_case"

class AttendantsTest < ApplicationSystemTestCase
  setup do
    @attendant = attendants(:one)
  end

  test "visiting the index" do
    visit attendants_url
    assert_selector "h1", text: "Attendants"
  end

  test "should create attendant" do
    visit attendants_url
    click_on "New attendant"

    fill_in "Email", with: @attendant.email
    fill_in "Name", with: @attendant.name
    click_on "Create Attendant"

    assert_text "Attendant was successfully created"
    click_on "Back"
  end

  test "should update Attendant" do
    visit attendant_url(@attendant)
    click_on "Edit this attendant", match: :first

    fill_in "Email", with: @attendant.email
    fill_in "Name", with: @attendant.name
    click_on "Update Attendant"

    assert_text "Attendant was successfully updated"
    click_on "Back"
  end

  test "should destroy Attendant" do
    visit attendant_url(@attendant)
    click_on "Destroy this attendant", match: :first

    assert_text "Attendant was successfully destroyed"
  end
end
