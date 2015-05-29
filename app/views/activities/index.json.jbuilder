json.array!(@activities) do |activity|
  json.extract! activity, :id, :activity_name, :activity_type_id, :parent_activity_id
  json.url activity_url(activity, format: :json)
end
