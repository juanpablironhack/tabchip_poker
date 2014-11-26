class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, null: false
      t.string :surname, null: false
      t.string :adress, null: false
      t.integer :account_bank
      t.float :total_money, null: false , default: 0
      t.date  :date_of_birth
      	
      t.timestamps null: false
    end
  end
end
