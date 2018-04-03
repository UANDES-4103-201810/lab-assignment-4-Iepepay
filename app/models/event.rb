class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets



  validate :start_date, presence: true, :if => :condition_testing?

  def condition_testing?
    !(start_date < created_at)
  end





end
