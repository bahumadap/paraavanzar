require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Category", with: @ticket.category
    fill_in "Creation date", with: @ticket.creation_date
    fill_in "Deadline", with: @ticket.deadline
    fill_in "Description", with: @ticket.description
    fill_in "Executive", with: @ticket.executive_id
    fill_in "On time", with: @ticket.on_time
    fill_in "Priority", with: @ticket.priority
    fill_in "Requesting user", with: @ticket.requesting_user_id
    fill_in "State", with: @ticket.state
    fill_in "Tags", with: @ticket.tags
    fill_in "Title", with: @ticket.title
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Category", with: @ticket.category
    fill_in "Creation date", with: @ticket.creation_date
    fill_in "Deadline", with: @ticket.deadline
    fill_in "Description", with: @ticket.description
    fill_in "Executive", with: @ticket.executive_id
    fill_in "On time", with: @ticket.on_time
    fill_in "Priority", with: @ticket.priority
    fill_in "Requesting user", with: @ticket.requesting_user_id
    fill_in "State", with: @ticket.state
    fill_in "Tags", with: @ticket.tags
    fill_in "Title", with: @ticket.title
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
