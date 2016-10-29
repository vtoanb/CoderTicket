# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Category, type: :model do
  it do should validate_inclusion_of(:name).
    in_array(['Entertainment', 'Learning', 'Everything Else'])
  end
  it { should validate_uniqueness_of(:name) }
end
