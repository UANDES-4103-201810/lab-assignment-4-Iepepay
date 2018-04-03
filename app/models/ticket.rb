class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets

  validates :price, :integer_only => true, :gt => 0

  validate
end
