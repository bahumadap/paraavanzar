json.extract! report, :id, :number_tickets, :tickets_closed, :tickets_open, :rating_mean, :administrator_id, :supervisor_id, :created_at, :updated_at
json.url report_url(report, format: :json)
