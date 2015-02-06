class VehicleAutoAuction < ActiveRecord::Base
	belongs_to :auction
	has_many :vehicles

		def total_profit(winning_bid, seller_payout)
			array_winning_bids = VehicleAutoAuction.where.not(winning_bid:0).pluck(:winning_bid)
			sum_winning_bids = array_winning_bids.inject{|sum,x| sum + x}
			array_seller_payouts = VehicleAutoAuction.where.not(seller_payout:0).pluck(:seller_payout)
			sum_seller_payouts = array_seller_payouts.inject{|sum,x| sum + x}
			sum_winning_bids - sum_seller_payouts

		end

		def number_sold
			array = VehicleAutoAuction.where.not(winning_bid:0).pluck(:winning_bid).count
		end

		def average_profit
			array_winning_bids = VehicleAutoAuction.where.not(winning_bid:0).pluck(:winning_bid)
			sum_winning_bids = array_winning_bids.inject{|sum,x| sum + x}
			array_seller_payouts = VehicleAutoAuction.where.not(seller_payout:0).pluck(:seller_payout)
			sum_seller_payouts = array_seller_payouts.inject{|sum,x| sum + x}
			(sum_winning_bids - sum_seller_payouts) / number_sold
		end
end