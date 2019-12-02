require "application_system_test_case"

class LeavesTest < ApplicationSystemTestCase
  setup do
    @leafe = leaves(:one)
  end

  test "visiting the index" do
    visit leaves_url
    assert_selector "h1", text: "Leaves"
  end

  test "creating a Leafe" do
    visit leaves_url
    click_on "New Leafe"

    fill_in "Description", with: @leafe.description
    fill_in "Employee", with: @leafe.employee_id
    fill_in "Leave type", with: @leafe.leave_type
    fill_in "Status", with: @leafe.status
    click_on "Create Leafe"

    assert_text "Leafe was successfully created"
    click_on "Back"
  end

  test "updating a Leafe" do
    visit leaves_url
    click_on "Edit", match: :first

    fill_in "Description", with: @leafe.description
    fill_in "Employee", with: @leafe.employee_id
    fill_in "Leave type", with: @leafe.leave_type
    fill_in "Status", with: @leafe.status
    click_on "Update Leafe"

    assert_text "Leafe was successfully updated"
    click_on "Back"
  end

  test "destroying a Leafe" do
    visit leaves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leafe was successfully destroyed"
  end
end
