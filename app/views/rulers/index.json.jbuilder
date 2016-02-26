json.array!(@rulers) do |ruler|
  json.extract! ruler, :id, :nombre, :precio, :descripcion
  json.url ruler_url(ruler, format: :json)
end
