# == Schema Information
#
# Table name: lines
#
#  id             :integer          not null, primary key
#  quantity       :integer
#  ticket_type_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  order_id       :integer
#

require 'rails_helper'

RSpec.describe Line, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
