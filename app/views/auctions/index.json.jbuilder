json.array!(@auctions) do |auction|
  json.extract! auction, :id, :location_name, :address, :city, :state, :zip
  json.url auction_url(auction, format: :json)
end
