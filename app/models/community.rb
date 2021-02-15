class Community < ApplicationRecord
  has_many :community_users
  has_many :community_images
end
