require 'test_helper'

class BadReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bad_report = bad_reports(:one)
  end

  test "should get index" do
    get bad_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_bad_report_url
    assert_response :success
  end

  test "should create bad_report" do
    assert_difference('BadReport.count') do
      post bad_reports_url, params: { bad_report: {  } }
    end

    assert_redirected_to bad_report_url(BadReport.last)
  end

  test "should show bad_report" do
    get bad_report_url(@bad_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_bad_report_url(@bad_report)
    assert_response :success
  end

  test "should update bad_report" do
    patch bad_report_url(@bad_report), params: { bad_report: {  } }
    assert_redirected_to bad_report_url(@bad_report)
  end

  test "should destroy bad_report" do
    assert_difference('BadReport.count', -1) do
      delete bad_report_url(@bad_report)
    end

    assert_redirected_to bad_reports_url
  end
end
