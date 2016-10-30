class AddFinishToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :finish, :boolean, default: false
  end
end
