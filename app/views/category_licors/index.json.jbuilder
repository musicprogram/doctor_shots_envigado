json.array!(@category_licors) do |category_licor|
  json.extract! category_licor, :id, :nombre
  json.url category_licor_url(category_licor, format: :json)
end
