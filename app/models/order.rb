class Order < ApplicationRecord
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create

  belongs_to :showing
  delegate :auditorium, to: :showing
  delegate :film, to: :auditorium
end
