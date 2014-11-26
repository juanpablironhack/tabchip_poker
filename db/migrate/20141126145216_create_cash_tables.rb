class CreateCashTables < ActiveRecord::Migration
  def change
    create_table :cash_tables do |t|
    	t.integer :number_players, null: false
      t.float :small_blind, null: false, default: 0.05
    	t.float :big_blind, null: false, default: 0.10
      	
    	t.timestamps null: false
    end
  end
end
