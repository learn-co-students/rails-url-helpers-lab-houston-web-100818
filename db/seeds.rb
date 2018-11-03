# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all

Student.create(
  [
    {
      first_name: "Harry",
      last_name: "Potter"
    },
    {
      first_name: "Ron",
      last_name: "Weasley"
    },
    {
      first_name: "Hermione",
      last_name: "Granger"
    },
    {
      first_name: "Neville",
      last_name: "Longbottom"
    }
  ]
)
