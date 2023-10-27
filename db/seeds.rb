# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
=begin
Baterium.create(nombre: "iones de litio")
Baterium.create(nombre: "estado sólido")

Marca.create(nombre: "Tesla")
Marca.create(nombre: "Nissan")
Marca.create(nombre: "Chevrolet")
Marca.create(nombre: "BMW")
Marca.create(nombre: "Audi")
Marca.create(nombre: "Hyundai")
Marca.create(nombre: "Kia")
Marca.create(nombre: "Ford")
Marca.create(nombre: "Porsche")
Marca.create(nombre: "Volkswagen")
Carga.create(nombre: "alámbrica")
Carga.create(nombre: "Inalambrica")
Tecnologium.create(nombre: "Asistencia a la Conducción")

5.times do |i|
    Carracteristica.create()
end
=end
5.times do |i|
    Auto.create(
    modelo_de_auto: Faker::Vehicle.model,
    Rango: Faker::Vehicle.kilometrage,
    Precio_por_dia: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    Año_fabricacion: Faker::Vehicle.year, )
 end



