class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
