class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :profile_id
      t.integer :sf_amount
      t.float :sf_price
      t.integer :monthly_price
      t.string :location
      t.datetime :created_on
      t.datetime :created_at

      t.timestamps
    end
  end
end
