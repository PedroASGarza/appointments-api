FactoryBot.define do
  factory :patient do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
  end
end
