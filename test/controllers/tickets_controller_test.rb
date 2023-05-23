require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference("Ticket.count") do
      post tickets_url, params: { ticket: { category: @ticket.category, creation_date: @ticket.creation_date, deadline: @ticket.deadline, description: @ticket.description, executive_id: @ticket.executive_id, on_time: @ticket.on_time, priority: @ticket.priority, requesting_user_id: @ticket.requesting_user_id, state: @ticket.state, tags: @ticket.tags, title: @ticket.title } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { category: @ticket.category, creation_date: @ticket.creation_date, deadline: @ticket.deadline, description: @ticket.description, executive_id: @ticket.executive_id, on_time: @ticket.on_time, priority: @ticket.priority, requesting_user_id: @ticket.requesting_user_id, state: @ticket.state, tags: @ticket.tags, title: @ticket.title } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference("Ticket.count", -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
