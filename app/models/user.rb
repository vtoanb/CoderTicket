# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :lines, through: :orders
  has_many :ticket_types, through: :lines
  has_many :publishers
  has_many :events, through: :publishers

  def current_order
    record = orders.where(finish: false).take
    if record.present?
      record
    else
      orders.new
    end
  end

  def checkout
    record = orders.where(finish: false).take
    if record.present?
      record.finish = true
      record.lines.each do |line|
        tk = line.ticket_type
        tk.max_quantity -= line.quantity if tk.max_quantity >= line.quantity 
      end
      record.save
    end
  end
end
