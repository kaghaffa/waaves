class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


def genrepoints

if self.genre1 = "Hip Hop"
  10
elsif
  0
end

end
def self.sorted_by_relevance

  User.where(production:true).sort_by(&:genrepoints).reverse

end


end
