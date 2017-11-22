class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_total
      t.text :address
      t.integer :customer_id

      t.timestamps
    end
  end
end
