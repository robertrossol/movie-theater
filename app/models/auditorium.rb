class Auditorium < ApplicationRecord
  belongs_to :film
  has_many :showings
end
