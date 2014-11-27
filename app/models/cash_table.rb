class CashTable < ActiveRecord::Base
	
	has_many :user

	validates :cash_table_id, presence: true
	validates :cash_table_id, uniqueness: true

	validates :number_players, presence: true
	/validar que es tipo: integer/
	validates :number_players, numericality: true
	
	

	validates :big_blind, presence: true
	/validar que es tipo: float/
	validates :big_blind, numericality: true

	validates :small_blind, presence: true
	/validar que es tipo: float/
	validates :small_blind, numericality: true

	serialize :state_data, Hash
end
