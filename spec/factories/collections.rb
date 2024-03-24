require 'faker'

FactoryBot.define do
  factory :collection do
    name { Faker::Lorem.word }
    association :user
    association :city
  end
end
