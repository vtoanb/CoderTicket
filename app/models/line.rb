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

class Line < ActiveRecord::Base
  validates :quantity, inclusion: { in: 1..10, message: "you can only buy maximum 10 ticket type at a time" }
  belongs_to :ticket_type
end
