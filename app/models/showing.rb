class Showing < ApplicationRecord
  belongs_to :auditorium
  has_many :orders
  delegate :film, to: :auditorium

  def tickets_remaining
    auditorium.capacity - orders.count
  end
end
