require "application_system_test_case"

class BadReportsTest < ApplicationSystemTestCase
  setup do
    @bad_report = bad_reports(:one)
  end

  test "visiting the index" do
    visit bad_reports_url
    assert_selector "h1", text: "Bad Reports"
  end

  test "creating a Bad report" do
    visit bad_reports_url
    click_on "New Bad Report"

    click_on "Create Bad report"

    assert_text "Bad report was successfully created"
    click_on "Back"
  end

  test "updating a Bad report" do
    visit bad_reports_url
    click_on "Edit", match: :first

    click_on "Update Bad report"

    assert_text "Bad report was successfully updated"
    click_on "Back"
  end

  test "destroying a Bad report" do
    visit bad_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bad report was successfully destroyed"
  end
end
