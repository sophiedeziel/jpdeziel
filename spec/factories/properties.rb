FactoryGirl.define do
  factory :property do
    name { Faker::Hacker.noun }
    value { Faker::Lorem.paragraph }
  end
end
