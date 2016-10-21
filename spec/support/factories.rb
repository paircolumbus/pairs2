require 'faker'

FactoryGirl.define do
  factory :user do |u|
    u.first_name  { Faker::Name.first_name }
    u.last_name   { Faker::Name.last_name }
    u.email       { Faker::Internet.email }
    u.username    { Faker::StarWars.character.split.join }
    u.password    { "abcdef123" }
    u.skill_level { Faker::Number.between(1, 3) }
  end

  factory :pair do |p|
    p.status { 0 }
  end

  factory :reservation do |r|
  end

  factory :reservation_status do |rs|
  end

  factory :skill do |s|
    s.name { 'rails' }
  end

  factory :event do |e|
    e.name { 'halloween' }
    e.date { DateTime.now }
    e.start_time { Time.now }
    e.end_time { Time.now + 1.second }
    e.status { 1 }
  end
  
  factory :organization do |o|
    o.name { 'pair columbus' }
    o.description { 'pair columbus is awesome' }
  end
end
