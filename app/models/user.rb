class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness =>true


  #validates :genre1, :presence => true
  #validates :genre2, :presence => true
  #validates :genre3, :presence => true

  has_many :requests
  has_one :profile







end
