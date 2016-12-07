class Seeds < ApplicationRecord

  require 'csv'

  csv_text = File.read(Rails.root.join('lib', 'seeds', 'dummyusers v2.csv'))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
  csv.each do |row|
    u = User.new
    u.email = row['email']
    u.username = row['username']
    u.avatar_url = row['avatar_url']
    u.password = row['password']
    u.password_confirmation = row['password_confirmation']
    u.save

    p = Profile.new
    p.genre1 = row['genre1']
    p.genre2 = row['genre2']
    p.genre3 = row['genre3']
    p.goals = row['goals']
    p.experience = row['experience']
    p.soundcloudurl = row['soundcloudurl']
    p.youtubeurl = row['youtubeurl']
    p.bandcampurl = row['bandcampurl']
    p.googledriveurl = row['googledriveurl']
    p.otherurl = row['otherurl']
    p.production = row['production']
    p.vocals = row['vocals']
    p.liveinstrumentation = row['liveinstrumentation']
    p.mixingandmastering = row['mixingandmastering']
    p.similar = row['similar']
    p.user_id = row['user_id']
    p.username = row['username']
    p.avatar_url = row['avatar_url']
    p.save

  end
end
