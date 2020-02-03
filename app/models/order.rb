class Order < ApplicationRecord
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create
  validates_format_of :cc, with: /\A(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})\z/, on: :create
  validates_format_of :cc_exp, with: /\A(0[1-9]|1[0-2])\/?([0-9]{4}|[0-9]{2})\z/, on: :create


  belongs_to :showing
  delegate :auditorium, to: :showing
  delegate :film, to: :auditorium

  def full_name
    first_name + ' ' + last_name
  end

end
