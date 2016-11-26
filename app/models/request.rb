class Request < ApplicationRecord

  has_many :chats
  has_many :selectedusers
  belongs_to :user

has_one :completedcollab

end
