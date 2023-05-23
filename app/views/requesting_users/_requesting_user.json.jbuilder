json.extract! requesting_user, :id, :requesting_email, :user_id, :created_at, :updated_at
json.url requesting_user_url(requesting_user, format: :json)
