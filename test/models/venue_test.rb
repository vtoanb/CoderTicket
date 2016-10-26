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

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
