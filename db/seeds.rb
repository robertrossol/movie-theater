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
            ["12:00PM", 6], ["3:00PM", 6], ["6:00PM", 6], ["9:00PM", 6]
           ]
films.each do |name|
  Film.create(name: name)
end

auditoriums.each do |capacity, film_id|
  Auditorium.create( capacity: capacity, film_id: film_id)
end

showings.each do |time, auditorium_id|
  Showing.create(time: time, auditorium_id: auditorium_id)
end
