class Model < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   	has_many :cash_table_id

	validates :user_id, presence: true
	validates :user_id, uniqueness: true

	validates :name, presence: true

	#The following four data fields do not miss being present to play without money:
	#validates :surname, presence: true

	#validates :adress, presence: true

	#validates :account_bank, presence: true
	#validates :account_bank , uniqueness: true

	#validates :date_of_birth, presence: true
	#Validate that is datatype: date (unknown) 
	#validates :date_of_birth, : true/

	validates :total_money, numericality: true

	validates :big_blinds, numericality: true
end
