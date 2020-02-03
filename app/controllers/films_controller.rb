class FilmsController < ApplicationController

  def index
    @films = Film.all
    render 'index.html.erb'
  end

  def new
    @film = Film.new
    render 'new.html.erb'
  end

  def create
    @film = Film.new(
      name: params[:form_name]
    )
    if @film.save
      redirect_to "/manage#films"
    else
      render 'new.html.erb'
    end
  end

  def destroy
    @film = Film.find_by(id: params[:id])
    if @film.auditoriums.empty?
      @film.destroy
    else
      flash[:warning] = "Please remove film from auditoriums first!"
    end
    redirect_to "/manage"
  end
end
