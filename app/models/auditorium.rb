class Auditorium < ApplicationRecord
  validates :capacity, numericality: { greater_than: 0 }

  belongs_to :film
  has_many :showings, dependent: :destroy

  def film_playing
    if film
      film.name
    else
      "Coming Soon!"
    end
  end

end
