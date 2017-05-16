require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name 'Test user'
    email 'user.email@example.com'
  end
end
