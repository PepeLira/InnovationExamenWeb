require "application_system_test_case"

class CommunicatesTest < ApplicationSystemTestCase
  setup do
    @communicate = communicates(:one)
  end

  test "visiting the index" do
    visit communicates_url
    assert_selector "h1", text: "Communicates"
  end

  test "creating a Communicate" do
    visit communicates_url
    click_on "New Communicate"

    click_on "Create Communicate"

    assert_text "Communicate was successfully created"
    click_on "Back"
  end

  test "updating a Communicate" do
    visit communicates_url
    click_on "Edit", match: :first

    click_on "Update Communicate"

    assert_text "Communicate was successfully updated"
    click_on "Back"
  end

  test "destroying a Communicate" do
    visit communicates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Communicate was successfully destroyed"
  end
end
