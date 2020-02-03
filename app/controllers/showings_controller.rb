class ShowingsController < ApplicationController
  # def index
  #   @showings = Showing.all
  #   render 'index.html.erb'
  # end

  def new
    @showing = Showing.new(auditorium_id: params[:id])
    @auditorium = Auditorium.find_by(id: params[:auditorium_id]) || Auditorium.first
    render 'new.html.erb'
  end

  def create
    @showing = Showing.new(
      time: params[:form_time],
      auditorium_id: params[:form_auditorium]
    )
    if @showing.save
      redirect_to "/manage#auditoriums"
    else
      @auditorium = Auditorium.find_by(id: params[:form_auditorium]) || Auditorium.first
      render 'new.html.erb'
    end
  end

  def destroy
    @showing = Showing.find_by(id: params[:id])
    @showing.destroy
    redirect_to "/manage#auditoriums"
  end
end
