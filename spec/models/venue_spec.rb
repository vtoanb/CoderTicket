# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  name         :string
#  full_address :string
#  region_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Venue, type: :model do
  describe "validate presence" do
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:region) }
  end
end
