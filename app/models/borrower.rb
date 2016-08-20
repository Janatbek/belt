class Borrower < ActiveRecord::Base
	has_many :histories
  	has_many :lenders, through: :histories

	#   attr_accessible :first_name, :last_name, :email, :password, :pc, :purpose, :money, :description
	  
	#   attr_accessor :password

	#   before_save :encrypt_password
	  
	# EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
 #  	validates :first_name, :last_name, :email, :password, :pc, :purpose, :money, :description, presence: true
 #  	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	  
	#   def self.authenticate(email, password)
	#     user = find_by_email(email)
	#     if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	#       user
	#     else
	#       nil
	#     end
	#   end
	  
	#   def encrypt_password
	#     if password.present?
	#       self.password_salt = BCrypt::Engine.generate_salt
	#       self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	#     end
	#   end
end
