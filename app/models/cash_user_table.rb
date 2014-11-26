class CashUserTable < ActiveRecord::Base

	belongs_to :user
  	belongs_to :cash_table

  	validates :user_id , presence: true
  	validates :cash_table_id , presence: true
  	
end
