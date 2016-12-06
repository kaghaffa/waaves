class Completedcollab < ApplicationRecord
  mount_uploader :file, CollabUploader
  has_one :request
  has_many :comments
  has_many :likes
end
