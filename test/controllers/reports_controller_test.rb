require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference("Report.count") do
      post reports_url, params: { report: { administrator_id: @report.administrator_id, number_tickets: @report.number_tickets, rating_mean: @report.rating_mean, supervisor_id: @report.supervisor_id, tickets_closed: @report.tickets_closed, tickets_open: @report.tickets_open } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { administrator_id: @report.administrator_id, number_tickets: @report.number_tickets, rating_mean: @report.rating_mean, supervisor_id: @report.supervisor_id, tickets_closed: @report.tickets_closed, tickets_open: @report.tickets_open } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference("Report.count", -1) do
      delete report_url(@report)
    end

    assert_redirected_to reports_url
  end
end
