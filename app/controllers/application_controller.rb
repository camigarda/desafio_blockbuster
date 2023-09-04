class ApplicationController < ActionController::Base
    before_action :set_peliculas_disponibles
  
    private
  
    def set_peliculas_disponibles
      @peliculas_disponibles = Pelicula.where(cliente_id: nil)
    end
  end
  