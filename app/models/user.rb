class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :cash_table_id

	validates :user_id, presence: true
	validates :user_id, uniqueness: true

	validates :name, presence: true

	validates :surname, presence: true

	validates :adress, presence: true

	/no hace falta tener para jugar fictício
	validates :account_bank, presence: true/
	validates :account_bank , uniqueness: true

	/validar que es tipo: float/
	validates :total_money, numericality: true

	validates :date_of_birth, presence: true
	/validar que es tipo: date
	validates :date_of_birth/

end
