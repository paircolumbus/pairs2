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
