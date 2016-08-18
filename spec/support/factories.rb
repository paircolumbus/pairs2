require 'faker'

FactoryGirl.define do
  factory :user do |u|
    u.first_name  { Faker::Name.first_name }
    u.last_name   { Faker::Name.last_name }
    u.username    { Faker::StarWars.character.split.join }
    u.password    { "abcdef123" }
    u.skill_level { Faker::Number.between(1, 3) }
  end
end
