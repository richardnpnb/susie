json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :activity_type_id, :parent_id
  json.url activity_url(activity, format: :json)
end
