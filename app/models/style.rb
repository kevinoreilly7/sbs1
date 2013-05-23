class Style < ActiveRecord::Base
  attr_accessible :caption, :name, :image, :remote_image_url

  mount_uploader :image, ImageUploader
end
