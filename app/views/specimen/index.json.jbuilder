json.array!(@specimen) do |speciman|
  json.extract! speciman, :id, :id, :parent, :type, :label
  json.url speciman_url(speciman, format: :json)
end
