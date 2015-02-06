json.array!(@vehicle_auto_auctions) do |vehicle_auto_auction|
  json.extract! vehicle_auto_auction, :id, :auction_id, :vehicle_id, :winning_bid, :seller_payout, :description
  json.url vehicle_auto_auction_url(vehicle_auto_auction, format: :json)
end
