# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

films = ["Jaws", "LOTR", "Parasite", "Star Wars"]
auditoriums = [[20, 1], [30, 2], [40, 3], [50, 4], [100, 2], [75,3]]
showings = [["12:00PM", 1], ["3:00PM", 1], ["6:00PM", 1], ["9:00PM", 1],
            ["12:00PM", 2], ["3:00PM", 2], ["6:00PM", 2], ["9:00PM", 2],
            ["12:00PM", 3], ["3:00PM", 3], ["6:00PM", 3], ["9:00PM", 3],
            ["12:00PM", 4], ["3:00PM", 4], ["6:00PM", 4], ["9:00PM", 4],
            ["12:00PM", 5], ["3:00PM", 5], ["6:00PM", 5], ["9:00PM", 5],
            ["12:00PM", 6], ["3:00PM", 6], ["6:00PM", 6], ["9:00PM", 6]]
orders = [["Rob", "Rossol", "shyguyrbr1@gmail.com", "1234 5678 9101 1121", "12/23", 1, "Jaws", "12:00 PM", 1],
          ["Ashley", "Rossol", "arwerth@gmail.com", "1234 5678 9101 1121", "12/24", 6, "LOTR", "3:00 PM", 2]]
films.each do |name|
  Film.create(name: name)
end

auditoriums.each do |capacity, film_id|
  Auditorium.create(capacity: capacity, film_id: film_id)
end

showings.each do |time, auditorium_id|
  Showing.create(time: time, auditorium_id: auditorium_id)
end

orders.each do |first_name, last_name, email, cc, cc_exp, showing_id, film_name, showing_time, auditorium_id|
  Order.create(first_name: first_name, last_name: last_name, email: email, cc: cc, cc_exp: cc_exp, showing_id: showing_id, film_name: film_name, showing_time: showing_time, auditorium_id: auditorium_id)
end