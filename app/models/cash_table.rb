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

+  	validates_inclusion_of :player_turn => [true, false]
	validates_inclusion_of :pre_flop_turn => [true, false]
    validates_inclusion_of :flop_turn => [true, false]
    validates_inclusion_of :turn_turn => [true, false]
    validates_inclusion_of :river_turn => [true, false]

	validates_inclusion_of :player_win => [true, false]

	validates_inclusion_of :turn_time => [true, false]

	validates :one_third_pot, presence: true
	#Validate that is data type: float, also used numericality?
	validates :one_third_pot, numericality: true

	validates :half_pot, presence: true
	#Validate that is data type: float, also used numericality?
	validates :half_pot, numericality: true

	validates :total_pot, presence: true
	#Validate that is data type: float, also used numericality?
	validates :total_pot, numericality: true

	validates_inclusion_of :call => [true, false]

	validates_inclusion_of :fold => [true, false]

	validates_inclusion_of :bet_one_third_pot => [true, false]

	validates_inclusion_of :bet_half_pot => [true, false]

	validates_inclusion_of :bet_pot_pot => [true, false]

	validates_inclusion_of :bet_x_bb => [true, false]

	serialize :state_player, Hash
end
