# spec/factories/region.rb
require 'faker'
name = ['Ho Chi Minh', 'Ha Noi', 'Binh Thuan', 'Da Nang', 'Lam Dong']
FactoryGirl.define do
  factory :region do |f|
    f.name name[Random.rand(0..4)]
  end
end
