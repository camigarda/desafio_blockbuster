require 'faker'
# Crear clientes con Faker
8.times do
    Cliente.create(
      nombre: Faker::Name.name,
      email: Faker::Internet.email
    )
  end
  
  puts "Clientes generados"
  
# Generar películas
50.times do
    pelicula = Pelicula.create(
      titulo: Faker::Lorem.words(number: 3).join(" "),
      genero: Faker::Book.genre 
    )
  
      pelicula.update(cliente: Cliente.all.sample) if rand < 0.3
  end
  
  puts "Datos de películas generados"

# Generar películas disponibles
50.times do
    pelicula = Pelicula.create(
      titulo: Faker::Lorem.words(number: 3).join(" "),
      genero: Faker::Book.genre,
      cliente_id: nil
    )
  end
  
  puts "Películas disponibles generadas"
  
