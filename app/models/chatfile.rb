class Chatfile < ApplicationRecord

  belongs_to :request
  mount_uploader :file, CollabUploader


end
