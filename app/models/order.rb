class Order < ApplicationRecord
  belongs_to :showing
  delegate :auditorium, to: :showing
  delegate :film, to: :auditorium
end
