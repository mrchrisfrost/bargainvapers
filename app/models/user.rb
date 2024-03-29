class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
  	validates :name, presence: true, length: { maximum: 60 }
 	
	 # validates :password_confirmation

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i 
	validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password

  
  validates :password, length: { minimum: 6 }
  validates :state, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :zipcode, presence: true
end