json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :make, :model, :year, :stock_number
  json.url vehicle_url(vehicle, format: :json)
end
