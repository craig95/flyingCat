FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "qwerty12345"
    first_name "Peter"
    last_name "Example"
    admin false
  end
  factory :admin, class: User do
    email 
    password "qwerty12345"
    first_name "Peter"
    last_name "Example"
    admin true
  end
end
