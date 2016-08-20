class Lender < ActiveRecord::Base
	has_many :histories
  	has_many :borrowers, through: :histories
end
