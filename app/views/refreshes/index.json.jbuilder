json.array!(@refreshes) do |refresh|
  json.extract! refresh, :id, :refresh_date, :refresh_type, :env_id
  json.url refresh_url(refresh, format: :json)
end
