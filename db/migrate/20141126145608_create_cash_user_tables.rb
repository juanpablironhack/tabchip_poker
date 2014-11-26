class CreateCashUserTables < ActiveRecord::Migration
  def change
    create_table :cash_user_tables do |t|
    	t.integer :user_id, null: false
    	t.integer :cash_table_id, null: false

      t.timestamps, null: false
    end
  end
end
