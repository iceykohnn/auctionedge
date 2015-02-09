class Auction < ActiveRecord::Base
	belongs_to :staging
	has_many :vehicle_auto_auctions
	has_many :vehicles, through: :vehicle_auto_auctions


end
