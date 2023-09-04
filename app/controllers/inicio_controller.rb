class InicioController < ApplicationController
  def index
    @peliculas = Pelicula.all
  end
end
