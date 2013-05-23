class AddImageToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :image, :string
  end
end
