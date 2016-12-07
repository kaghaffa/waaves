class Completedcollab < ApplicationRecord

  mount_uploader :file, CollabUploader

has_many :comments
has_many :likes

  validates :title, :presence => true


end
