class CreateCashTables < ActiveRecord::Migration
  def change
    create_table :cash_tables do |t|
    	
    	t.integer :number_players, null: false
      
      ###The blinds are the minimum bets of players in each hand a player touches obligated to pay the small blind and the big blind following. 
      ###These blinds are turning and passing from player to player after each hand in the direction of clockwise.
      t.float :small_blind, null: false, default: 0.05
    	t.float :big_blind, null: false, default: 0.10

    	t.text :state_player, null: false

    	#The next field would be to ask whether the player won at the end of the hand
      t.boolean :player_turn #########
      ###At Poker 4 different shifts: pre-flop bet, bet in flop, bet in turn and river bet. Then I add the 4 types of turns.
      t.boolean :pre_flop_turn #########
      t.boolean :flop_turn #########
      t.boolean :turn_turn #########
      t.boolean :river_turn #########

      #The next field would be to ask that player touches you to action
    	t.boolean :player_win #########

      #The next field would be to count the time for each player's turn
    	t.datetime :turn_time, null: false, default: 60 #60 seconds
      	
      ###The nexts fields are quick bets:
    	t.float :one_third_pot
    	#one_third_pot = total_pot / 3
   		t.float :half_pot
  		#one_third_pot = total_pot / 2
  		t.float :total_pot

  		###The nexts fields are actions of players:
  		t.boolean :call ###########
  		t.boolean :fold ###########
  		t.boolean :bet_one_third_pot ##########
  		t.boolean :bet_half_pot ##########
  		t.boolean :bet_pot_pot ##########+
  		t.boolean :bet_x_bb ########## #This can serve action for bet a  determinated number of big blinds.


    	t.timestamps null: false
    end
  end
end
