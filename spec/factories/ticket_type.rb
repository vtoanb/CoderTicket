# spec/factories/ticket_type.rb
require 'faker'

FactoryGirl.define do
  factory :ticket_type do |f|
    f.price Faker::Number.number(5)
    f.name Faker::Name.name
    f.max_quantity Faker::Number.number(3)
  end
end
