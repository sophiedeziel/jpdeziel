FactoryGirl.define do
  factory :prevention_category do
    name { Faker::Lorem.sentence  }
    description { Faker::Lorem.sentence }
    slug { Faker::Internet.slug }
  end
end
