# == Schema Information
#
# Table name: ticket_types
#
#  id           :integer          not null, primary key
#  event_id     :integer
#  price        :integer
#  name         :string
#  max_quantity :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class TicketTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
