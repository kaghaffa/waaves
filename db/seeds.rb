# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  p.username = row['username1']
  p.avatar_url = row['avatar_url1']
  p.user_id = row['user_id']
  p.save
  
end

puts "There are now #{User.count} rows in the transactions table"
