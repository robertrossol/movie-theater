class OrdersController < ApplicationController
  def index
    @orders = Order.all
    films_with_orders = @orders.pluck(:film_name).uniq
    @films = Film.all.select { |film| film.name.in? films_with_orders }
    render 'index.html.erb'
  end

  def new
    @order = Order.new(showing_id: params[:id])
    @showing = Showing.find_by(id: params[:showing_id])
    render 'new.html.erb'
  end

  def create
    showing = Showing.find_by(id: params[:form_showing])
    @order = Order.new(
      first_name: params[:form_first_name],
      last_name: params[:form_last_name],
      email: params[:form_email],
      cc: params[:form_cc],
      cc_exp: params[:form_cc_exp],
      showing_id: params[:form_showing] || showing.id,
      film_name: showing.film.name,
      showing_time: showing.time.strftime("%I:%M %p"),
      auditorium_id: showing.auditorium_id
    )
    if @order.save
      OrderMailer.with(order: @order).new_order_email.deliver_now
      flash[:success] = "Thank you for your order! We'll contact you soon!"
      # redirect_to "/auditoriums/#{@order.auditorium.id}"
      redirect_to "/"
    else
      @showing = Showing.find_by(id: @order.showing_id)
      render 'new.html.erb'
    end
  end

end
