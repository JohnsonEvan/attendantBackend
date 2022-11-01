# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'making room for the new seeds'

Attendant.destroy_all

puts 'seeding'

User.create(name: "Test", email: "admin@ducks.com", password: "admin", password_confirmation: "admin", admin: true)


Attendant.create(name: 'Evan Johnson', email:'test@gmail.com')
Attendant.create(name: 'Steve Adams', email:'Steve@yahoo.com')
Attendant.create(name: 'Mike Williams', email:'Mike@aol.com')