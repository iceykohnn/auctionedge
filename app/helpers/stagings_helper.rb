module StagingsHelper
	
	@auction = Staging.where.not(winning_bid:0).pluck(:auction_name, :address, :city, :state, :zip)
	@vehicle = Staging.where.not(winning_bid:0).pluck(:vehicle_make, :vehicle_year, :vehicle_model, :vehicle_stock_number)
	@vehicle_auto_auction = Staging.where.not(winning_bid:0).pluck(:auction_id, :vehicle_id, :winning_bid, :seller_payout, :description)
	
	def build_location(args)
		@auction = args
		@auction.each do |a,b,x,y,z|
		Auction.create!(auction_name:a, address:b, city:x, state:y, zip:z)
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
		VehicleAutoAuction.create!(auction_id:a, vehicle_id:b, winning_bid:x, seller_payout:y, description:z)
		end
	end

end
