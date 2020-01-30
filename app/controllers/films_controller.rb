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
      redirect_to "/films"
    else
      render 'new.html.erb'
    end
  end

  def destroy
    @film = Film.find_by(id: params[:id])
    @film.destroy
    redirect_to "/films"
  end
end
