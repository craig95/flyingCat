FactoryGirl.define do
  sequence(:name) { |n| "Bike#{n}" }
  factory :product do
    name
    image_url "http://cdn.shopify.com/s/files/1/0739/4315/products/blue_profile.jpg?v=1448917766"
    colour "blue"
  end

end
