class Request < ApplicationRecord

  has_many :chats
  has_many :selectedusers
  has_many :chatfiles
  belongs_to :user


has_one :completedcollab

  validates :genreselect, :presence => true


  validate :skill_checked


  def skill_checked
    if skillsearch_production==nil && skillsearch_vocals == nil && skillsearch_liveinstrumentation == nil && skillsearch_mixingandmastering == nil
      errors.add(:skills, ":need to check at least one skill")
    end
  end


end
