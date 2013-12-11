json.array!(@specimen) do |speciman|
  json.extract! speciman, :id, :id, :label, :type
  json.url speciman_url(speciman, format: :json)
end
