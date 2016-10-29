class AddOrderToLines < ActiveRecord::Migration
  def change
    add_reference :lines, :order, index: true, foreign_key: true
  end
end
