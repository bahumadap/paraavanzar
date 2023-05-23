json.extract! user, :id, :email, :name, :last_name, :telephone, :password, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
