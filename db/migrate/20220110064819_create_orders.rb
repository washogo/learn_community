class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id,    null: false
      t.integer :address_id,     null: false
      t.integer :payment_method_id, null: false
      t.integer :shipping_fee,   null: false, default: 500
      t.integer :total_price,    null: false
      t.integer :order_status,   null: false, default: 0

      t.timestamps
    end
  end
end
