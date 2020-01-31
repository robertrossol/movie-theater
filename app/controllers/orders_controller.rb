class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render 'index.html.erb'
  end

  def new
    @order = Order.new(showing_id: params[:id])
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
      showing_id: params[:form_showing],
      film_name: showing.film.name,
      showing_time: showing.time.strftime("%I:%M %p"),
      auditorium_id: showing.auditorium_id
    )
    if @order.save
      redirect_to "/auditoriums/#{@order.auditorium.id}"
    else
      render 'new.html.erb'
    end
  end

end
