class Place < ApplicationRecord
	has_many :events

	validates :name, presence: true, length: { minimum: 20 }
	validates :capacity, :integer_only => true, :gt => 0

end
