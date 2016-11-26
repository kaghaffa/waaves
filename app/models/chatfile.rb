class Chatfile < ApplicationRecord

  mount_uploader :file, CollabUploader
  

end
