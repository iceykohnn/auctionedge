module StagingsHelper
	
	@auction = Staging.where.not(winning_bid:0).pluck(:auction_name, :street_address, :city, :state, :zip).to_a
	@vehicle = Staging.where.not(winning_bid:0).pluck(:vehicle_make, :vehicle_year, :vehicle_model, :vehicle_stock_number).to_a
	@vehicle_auto_auction = Staging.where.not(winning_bid:0).pluck(:winning_bid, :seller_payout, :description).to_a
	
	def build_location(args)
		@auction = args
		@auction.each do |a,b,x,y,z|
		Auction.create!(auction_name:a, street_address:b, city:x, state:y, zip:z)
		end
	end

	def build_car(args)
		@vehicle = args
		@vehicle.each do |a,b,y,z|
		Vehicle.create!(vehicle_make:a, vehicle_year:b, vehicle_model:y, vehicle_stock_number:z)
		end
	end

	def build_event(args)
		@vehicle_auto_auction = args
		@vehicle_auto_auction.each do |a,b,x,y,z|
		VehicleAutoAuction.create!(winning_bid:x, seller_payout:y, description:z)
		end
	end

end
