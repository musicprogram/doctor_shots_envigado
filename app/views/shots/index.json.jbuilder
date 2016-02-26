json.array!(@shots) do |shot|
  json.extract! shot, :id, :nombre, :precio, :descripcion
  json.url shot_url(shot, format: :json)
end
