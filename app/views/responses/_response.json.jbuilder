json.extract! response, :id, :resolution_key, :res_description, :r_scale, :feedback, :acceptance_state, :response_date, :requesting_user_id, :executive_id, :ticket_id, :created_at, :updated_at
json.url response_url(response, format: :json)
