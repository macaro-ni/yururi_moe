# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'admin@test',
   password: 'admintest'
)

Genre.create!(id:1, name: "Person")
Genre.create!(id:2, name: "Animal")
Genre.create!(id:1, name: "Others")