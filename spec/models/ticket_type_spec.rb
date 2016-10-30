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

require 'rails_helper'

RSpec.describe TicketType, type: :model do
  describe "validate something" do
    # it { should validate_presence_of(:event) }
  end
end
