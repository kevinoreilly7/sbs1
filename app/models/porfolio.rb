class Porfolio < ActiveRecord::Base
  attr_accessible :created_on, :location, :monthly_price, :profile_id, :sf_amount, :sf_price, :updated_on
end
