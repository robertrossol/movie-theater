class AuditoriumsController < ApplicationController

  def index
    @auditoriums = Auditorium.all
    render 'index.html.erb'
  end

  def show
    auditorium_id = params[:id]
    @auditorium = Auditorium.find_by(id: auditorium_id)
    render 'show.html.erb'
  end

  def new
    @auditorium = Auditorium.new
    render 'new.html.erb'
  end

  def create
    @auditorium = Auditorium.new(
      capacity: params[:form_capacity],
      film_id: params[:form_film]
    )
    if @auditorium.save
      redirect_to "/manage#auditoriums"
    else
      render "new.html.erb"
    end
  end

  def edit
    @auditorium = Auditorium.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @auditorium = Auditorium.find_by(id: params[:id])
    if @auditorium.update(
      capacity: params[:form_capacity],
      film_id: params[:form_film]
    )
      flash[:success] = "Auditorium Updated"
      redirect_to "/manage#auditoriums"
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @auditorium = Auditorium.find_by(id: params[:id])
    @auditorium.destroy
    redirect_to "/manage#auditoriums"
  end
end
