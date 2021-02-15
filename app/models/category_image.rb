class CategoryImage < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :categories
end
