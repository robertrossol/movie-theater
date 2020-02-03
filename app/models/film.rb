class Film < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :auditoriums

  def number_of_orders
    Order.where(film_name: name).count
  end
end
