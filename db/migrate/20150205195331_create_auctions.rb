class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :auction_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
