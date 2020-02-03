class PagesController < ApplicationController
  def home
    @films = Film.all
    @auditoriums = Auditorium.all.sort
    render 'home.html.erb'
  end
end
