require "test_helper"

class ExecutivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @executive = executives(:one)
  end

  test "should get index" do
    get executives_url
    assert_response :success
  end

  test "should get new" do
    get new_executive_url
    assert_response :success
  end

  test "should create executive" do
    assert_difference("Executive.count") do
      post executives_url, params: { executive: { administrator_id: @executive.administrator_id, report_id: @executive.report_id, supervisor_id: @executive.supervisor_id, user_id: @executive.user_id } }
    end

    assert_redirected_to executive_url(Executive.last)
  end

  test "should show executive" do
    get executive_url(@executive)
    assert_response :success
  end

  test "should get edit" do
    get edit_executive_url(@executive)
    assert_response :success
  end

  test "should update executive" do
    patch executive_url(@executive), params: { executive: { administrator_id: @executive.administrator_id, report_id: @executive.report_id, supervisor_id: @executive.supervisor_id, user_id: @executive.user_id } }
    assert_redirected_to executive_url(@executive)
  end

  test "should destroy executive" do
    assert_difference("Executive.count", -1) do
      delete executive_url(@executive)
    end

    assert_redirected_to executives_url
  end
end
