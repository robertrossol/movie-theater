class Showing < ApplicationRecord
  validates :time, :auditorium_id, presence: true
  validates_uniqueness_of :time, scope: :auditorium_id

  belongs_to :auditorium
  has_many :orders
  delegate :film, to: :auditorium

  def tickets_remaining
    auditorium.capacity - orders.count
  end
end
