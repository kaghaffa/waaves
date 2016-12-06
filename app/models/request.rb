class Request < ApplicationRecord

  has_many :chats
  has_many :selectedusers
  has_many :chatfiles
  belongs_to :user


has_one :completedcollab

end
