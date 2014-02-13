json.array!(@apps) do |app|
  json.extract! app, :id, :name, :description, :dev_lead, :env_support_lead
  json.url app_url(app, format: :json)
end
