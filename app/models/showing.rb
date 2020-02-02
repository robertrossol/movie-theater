class Showing < ApplicationRecord
  validates :time, :auditorium_id, presence: true
  validates_uniqueness_of :time, scope: :auditorium_id

  belongs_to :auditorium
  has_many :orders
  delegate :film, to: :auditorium


  def status
    if available?
      tickets_remaining
    else
      "Sold Out"
    end
  end

  def available?
    tickets_remaining > 0
  end

  private

  def tickets_remaining
    auditorium.capacity - orders.count
  end
end
