class Showing < ApplicationRecord
  belongs_to :auditorium
  delegate :film, :to => :auditorium

end
