class InGameProfile < ActiveRecord::Migration
  def change
    create_table :cash_tables do |t|
    	
    	t.float :partial_money, null: false, default: 0
    	
    	t.float :big_blinds, null: false, default: 0

        t.float :small_blinds, null: false, default: 0

        ###The next field would be to ask if it's my turn.
    	t.boolean :my_turn #########

        ###The following fields would be to ask whether the duty to pay the big blind and small blind player.
        t.boolean :turn_bb #########
        t.boolean :turn_sb #########
        t.boolean :turn_others_positions #########

        ###The next field would be to ask if I won.
    	t.boolean :my_win #########

    	t.datetime :turn_time, null: false, default: 60 #60 seconds

    	t.timestamps null: false
    end
  end
end
