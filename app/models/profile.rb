class Profile < ActiveRecord::Base

  has_secure_password

  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :title

  has_many :styles

  validates :email, uniqueness: true
end
