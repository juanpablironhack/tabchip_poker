class CreateCashTables < ActiveRecord::Migration
  def change
    create_table :cash_tables do |t|
    	
    	t.integer :number_players, null: false
      	
      	t.float :small_blind, null: false, default: 0.05
    	
    	t.float :big_blind, null: false, default: 0.10

    	t.text :state_player, null: false

    	t.boolean :turn_player, #########

    	t.boolean :win_player, #########
      	
      	###The nexts fields are quick bets:
      	t.float :one_third_pot
      	#one_third_pot = total_pot / 3
   		t.float :half_pot
  		#one_third_pot = total_pot / 2
  		t.float :total_pot

  		###The nexts fields are actions of players:
  		t.boolean :call, ###########
  		t.boolean :fold, ###########
  		t.boolean :bet_one_third_pot, ##########
  		t.boolean :bet_half_pot, ##########
  		t.boolean :bet_pot_pot, ##########+
  		t.boolean :bet_x_bb, ########## #This can serve action for bet a  determinated number of big blinds.

    	t.timestamps null: false
    end
  end
end
