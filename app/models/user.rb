class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  def genrepoints(requested_genre = nil)
    if self.genre1 == requested_genre
      10
    else
      0
    end
  end

  def goalpoints(requester_goal = nil)
    if self.goals == requester_goal
      10
    elsif (self.goals - requester_goal).abs == 1
      9
    elsif (self.goals - requester_goal).abs == 2
      4
    elsif (self.goals - requester_goal).abs == 3
      1
    elsif (self.goals - requester_goal).abs == 4
      0
    end
  end

  def experiencepoints(requester_experience = nil)
    if self.experience == requester_experience
      10
    elsif (self.experience - requester_experience).abs == 1
      9
    elsif (self.experience - requester_experience).abs == 2
      8
    elsif (self.experience - requester_experience).abs == 3
      7
    elsif (self.experience - requester_experience).abs == 4
      6
    elsif (self.experience - requester_experience).abs == 5
      5
    elsif (self.experience - requester_experience).abs == 6
      4
    elsif (self.experience - requester_experience).abs == 7
      3
    elsif (self.experience - requester_experience).abs == 8
      2
    elsif (self.experience - requester_experience).abs == 9
      1
    else
      0
    end

  end

def relevancescore(requested_genre = nil, requester_goal = nil, requester_experience = nil)
genrepoints(requested_genre) + goalpoints(requester_goal) + experiencepoints(requester_experience)

end




end
