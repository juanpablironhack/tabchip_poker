class CashUserTable < ActiveRecord::Base

	belongs_to :user
  	belongs_to :cash_table

  	validates :user_id , presence: true
  	validates :cash_table_id , presence: true
  	

  	/In boolean case:
  		validates_inclusion_of :(name_entidad) => [true, false]/
end


