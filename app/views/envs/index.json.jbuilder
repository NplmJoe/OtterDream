json.array!(@envs) do |env|
  json.extract! env, :id, :name, :description
  json.url env_url(env, format: :json)
end
