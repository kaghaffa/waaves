# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'dummyusers.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  u = User.new
  u.email = row['email']
  u.username = row['username']
  u.avatar_url = row['avatar_url']
  u.genre1 = row['genre1']
  u.genre2 = row['genre2']
  u.genre3 = row['genre3']
  u.goals = row['goals']
  u.experience = row['experience']
  u.soundcloudurl = row['soundcloudurl']
  u.youtubeurl = row['youtubeurl']
  u.bandcampurl = row['bandcampurl']
  u.googledriveurl = row['googledriveurl']
  u.otherurl = row['otherurl']
  u.production = row['production']
  u.vocals = row['vocals']
  u.liveinstrumentation = row['liveinstrumentation']
  u.mixingandmastering = row['mixingandmastering']
  u.similar = row['similar']
  u.password = row['password']
  u.password_confirmation = row['password_confirmation']
  u.save
  #puts "#{t.street}, #{t.city} saved"
end

puts "There are now #{User.count} rows in the transactions table"
