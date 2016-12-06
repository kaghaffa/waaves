class Comment < ApplicationRecord
  belongs_to :completedcollab
  belongs_to :user
end
