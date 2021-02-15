class Category < ApplicationRecord
  has_many :communities
  mount_uploader :image, ImageUploader
end
