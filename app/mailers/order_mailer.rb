class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]

    mail(to: @order.email, subject: "Order Confirmation")
  end
end
