class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets

		validates :email, presence: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
		validates :phone, presence: true, length: { in: 9..12 }
		validates :password, presence: true, length: { in: 8..12 }
end
