# spec/factories/event.rb
require 'faker'

FactoryGirl.define do
  factory :event do |f|
    f.starts_at Date.today
    f.ends_at Date.today + 3
    f.hero_image_url Faker::Internet.url
    f.extended_html_description Faker::Lorem.paragraph
    f.name Faker::App.name
  end
end
