require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "should create report" do
    visit reports_url
    click_on "New report"

    fill_in "Administrator", with: @report.administrator_id
    fill_in "Number tickets", with: @report.number_tickets
    fill_in "Rating mean", with: @report.rating_mean
    fill_in "Supervisor", with: @report.supervisor_id
    fill_in "Tickets closed", with: @report.tickets_closed
    fill_in "Tickets open", with: @report.tickets_open
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "should update Report" do
    visit report_url(@report)
    click_on "Edit this report", match: :first

    fill_in "Administrator", with: @report.administrator_id
    fill_in "Number tickets", with: @report.number_tickets
    fill_in "Rating mean", with: @report.rating_mean
    fill_in "Supervisor", with: @report.supervisor_id
    fill_in "Tickets closed", with: @report.tickets_closed
    fill_in "Tickets open", with: @report.tickets_open
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "should destroy Report" do
    visit report_url(@report)
    click_on "Destroy this report", match: :first

    assert_text "Report was successfully destroyed"
  end
end
