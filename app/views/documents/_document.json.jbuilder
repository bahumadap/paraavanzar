json.extract! document, :id, :file_type, :ticket_id, :created_at, :updated_at
json.url document_url(document, format: :json)
