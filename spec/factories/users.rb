FactoryGirl.define do
  factory :user do
    name "Amey Ban"
    email "a@b.com"
    age 21
    gender 'M'
    association :role
  end
end
