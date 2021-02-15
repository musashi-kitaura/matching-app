class CommunityImage < ApplicationRecord
  belongs_to :community
  mount_uploader :image, ImageUploader
end
