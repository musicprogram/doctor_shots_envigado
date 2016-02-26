json.array!(@jars) do |jar|
  json.extract! jar, :id, :nombre, :precio, :descripcion
  json.url jar_url(jar, format: :json)
end
