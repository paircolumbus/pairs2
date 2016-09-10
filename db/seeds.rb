# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
event = Event.create([{name:"Anything", date:Time.now}])
>>>>>>> fa4d990f339f14e62a79a9cb294e52145370b2f2

# Generate users

20.times do |i|
  password = Faker::Internet.password(8)
  User.create!(first_name: Faker::Name.first_name, 
              last_name: Faker::Name.last_name,
              email: Faker::Internet.email,
              username: Faker::Internet.user_name,
              skill_level: rand(0..2),
              password: password,
              password_confirmation: password)
end
