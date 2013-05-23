class DropPorfoliosTable < ActiveRecord::Migration
  def change
    drop_table :porfolios
  end
end
