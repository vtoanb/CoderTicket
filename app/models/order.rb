# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  finish     :boolean          default(FALSE)
#

class Order < ActiveRecord::Base

  belongs_to :user
  has_many :lines
  has_many :ticket_types, through: :lines

end
