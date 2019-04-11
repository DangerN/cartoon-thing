# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
Show.destroy_all
Creator.destroy_all

matt_groening = Creator.create(name: "Matt Groening")

simpsons_show = Show.create(name: "The Simpsons", creator: matt_groening)
futurama_show = Show.create(name: "Futurama", creator: matt_groening)

homer_simpson = Character.create(name: "Homer Simpson", show: simpsons_show)
bart_simpson = Character.create(name: "Bart Simpson", show: simpsons_show)
ned_flanders = Character.create(name: "Ned Flanders", show: simpsons_show)

philip_j_fry = Character.create(name: "Philip J. Fry", show: futurama_show)
leea = Character.create(name: "Leela", show: futurama_show)
bender = Character.create(name: "Bender", show: futurama_show)
