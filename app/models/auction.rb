class Auction < ActiveRecord::Base
	belongs_to :staging
	has_many :vehicle_auto_auctions
	has_many :vehicles, through: :vehicle_auto_auctions

	def pull_from_hash(hash)
		Auction.create!(location_name:hash_name[0], address:hash_name[1], city:hash_name[2], state:hash_name[3], zip:hash_name[4]) 
	end

end
