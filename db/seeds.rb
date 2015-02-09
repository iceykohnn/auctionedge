# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
auction = Auction.create(auction_name: "Shack de Isaac", street_address: "3261 n bay ct", city: "Chicago", state: "IL", zip: "60618"  )
event = VehicleAutoAuction.create(auction_name:"Shack de Isaac", auction_id:1, vehicle_id:1, winning_bid:1500, seller_payout:1000, description:"It looks like a million bucks")
car = Vehicle.create(vehicle_auto_auction_id:1, vehicle_make:"Toyota", vehicle_year:"2009", vehicle_model:"Camry", vehicle_stock_number:"122333")

stage = Staging.create!(
			auction_name:'Tinos',
			street_address:'5122 n long ave',
			city:'Chicago',	
			state:'IL',
			zip:60626,
			vehicle_year:2012,
			vehicle_make:'Tesla',
			vehicle_model:'Sport',
			vehicle_stock_number:123456543,
			winning_bid:30000,
			seller_payout:25000,
			description: 'like heavan on wheels')