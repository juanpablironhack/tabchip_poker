class Users < ActiveRecord::Migration
  def change
  	create_table :users do |t|
      t.string :name , null: false
      t.string :password , null: false
      t.string :email , null:false

      t.timestamps null: false
    end
  end
  /def up
  	create_table :users do |t|
      t.string :name , null: false
      t.string :password , null: false
      t.string :email , null:false

      t.timestamps null: false
    end
  end
  def down
    drop_table :users
  end/
end
