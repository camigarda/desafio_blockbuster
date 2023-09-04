json.extract! pelicula, :id, :titulo, :genero, :cliente_id, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
