class Community < ApplicationRecord
  has_many :community_users
  belongs_to :category,optional: true
  mount_uploader :image, ImageUploader
end
