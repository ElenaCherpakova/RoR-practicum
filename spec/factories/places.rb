FactoryBot.define do
    factory :place do
      name { Faker::Address.community }
      address { Faker::Address.full_address }
      place_type { ["landmark", "museum", "park", "playground", "zoo", "shopping", "restaurant", "beach"].sample }
      description { Faker::Lorem.sentence }
      rating { rand(1..5) }
      image_url { Faker::Internet.url }
      city { create(:city) }
    end
end