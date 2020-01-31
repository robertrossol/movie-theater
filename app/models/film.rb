class Film < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :auditoriums
end
