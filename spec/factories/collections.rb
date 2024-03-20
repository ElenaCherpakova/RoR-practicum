require 'faker'

FactoryBot.define do
  factory :collection do |f|
    f.name { Faker::Lorem.word }
    association :user
    association :city
  end
end
