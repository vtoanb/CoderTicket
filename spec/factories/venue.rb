# spec/factories/venue.rb
require 'faker'

FactoryGirl.define do
  factory :venue do |f|
    f.name Faker::App.name
    f.full_address Faker::Address.country
  end
end
