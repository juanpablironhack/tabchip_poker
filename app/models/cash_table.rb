class CashTable < ActiveRecord::Base
	
	has_many :user

	validates :cash_table_id, presence: true
	validates :cash_table_id, uniqueness: true

	validates :number_players, presence: true
	validates :number_players, numericality: true

	validates :big_blind, presence: true
	#Validate that is data type: float, also used numericality?
	validates :big_blind, numericality: true

	validates :small_blind, presence: true
	#Validate that is data type: float, also used numericality?
	validates :small_blind, numericality: true

	validates :turn_player, ########

	validates :win_player, #########

	validates :one_third_pot, presence: true
	#Validate that is data type: float, also used numericality?
	validates :one_third_pot, numericality: true

	validates :half_pot, presence: true
	#Validate that is data type: float, also used numericality?
	validates :half_pot, numericality: true

	validates :total_pot, presence: true
	#Validate that is data type: float, also used numericality?
	validates :total_pot, numericality: true

	validates :call, ########

	validates :fold, ########

	validates :bet_one_third_pot, ########

	validates :bet_half_pot, ########

	validates :bet_pot_pot, ########

	validates :bet_x_bb, ########

	serialize :state_player, Hash
end
