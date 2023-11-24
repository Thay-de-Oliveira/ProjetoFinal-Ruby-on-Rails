# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
State.create(id:24, description: 'Santa Catarina', acronym: 'SC')
State.create(id:25, description: 'Sergipe', acronym: 'SE')
State.create(id:26, description: 'São Paulo', acronym: 'SP')
State.find_or_create_by!(id: 27, description: 'Tocantins', acronym: 'TO')