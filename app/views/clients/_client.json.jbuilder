json.extract! client, :id, :name, :years_old, :created_at, :updated_at
json.url client_url(client, format: :json)