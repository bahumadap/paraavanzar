json.extract! ticket, :id, :title, :creation_date, :category, :description, :priority, :state, :deadline, :on_time, :tags, :requesting_user_id, :executive_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
