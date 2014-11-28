class InGameProfile < ActiveRecord::Base
	
	has_many :user

	validates :partial_money, presence: true

	validates :big_blinds, presence: true
	#Validate that is data type: float, also used numericality?
	validates :big_blind, numericality: true

	validates :small_blind, presence: true
	#Validate that is data type: float, also used numericality?
	validates :small_blind, numericality: true

	validates :my_turn, ########

	validates :my_win, #########

	validates :turn_time, #########

end
