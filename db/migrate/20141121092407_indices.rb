class Indices < ActiveRecord::Migration
  def change
  	/add_index :products , :category_id
    add_index :pictures , :product_id
    add_index :orders , :user_id
    add_index :product_orders , :product_id
    add_index :product_orders , :order_id/
  end
end
