json.array!(@licors) do |licor|
  json.extract! licor, :id, :nombre, :cantidad, :precio, :mililitros, :valor, :categoria, :descripcion
  json.url licor_url(licor, format: :json)
end
