class Portfolio < ActiveRecord::Base
  attr_accessible :created_at, :created_on, :location, :monthly_price, :profile_id, :sf_amount, :sf_price
  belongs_to :profile
end
