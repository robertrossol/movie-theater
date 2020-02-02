# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def new_order_email
    order = Order.new(
      first_name: "Joe",
      last_name: "Smith",
      email: "joe@gmail.com",
      cc: "1234 5678 9101 1121",
      cc_exp: "12/23",
      showing_id: 1,
      film_name: "Jaws",
      showing_time: "12:00 PM",
      auditorium_id: 1
  )

    OrderMailer.with(order: order).new_order_email
  end
end
