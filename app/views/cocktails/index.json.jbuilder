json.array!(@cocktails) do |cocktail|
  json.extract! cocktail, :id, :nombre, :precio, :descripcion
  json.url cocktail_url(cocktail, format: :json)
end
