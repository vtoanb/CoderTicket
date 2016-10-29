class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :quantity
      t.references :ticket_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
