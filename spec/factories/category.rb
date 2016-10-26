# spec/factories/articles.rb
# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# require 'faker'

name = ['Entertainment', 'Learning', 'Everything Else']

FactoryGirl.define do
  factory :category do |f|
    f.name name[Random.rand(0..2)]
  end
end
