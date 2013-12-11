json.array!(@specimens) do |specimen|
  json.extract! specimen, :id, :parent, :type, :label
  json.url specimen_url(specimen, format: :json)
end
