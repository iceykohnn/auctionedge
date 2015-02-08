# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
auction = Auction.create(location_name: "Shack de Isaac", address: "3261 n bay ct", city: "Chicago", state: "IL", zip: "60618"  )
event = VehicleAutoAuction.create(auction_id:1, vehicle_id:1, winning_bid:1500, seller_payout:1000, description:"It looks like a million bucks")
car = Vehicle.create(make:"Toyota", year:"2009", model:"Camry", stock_number:"122333")

