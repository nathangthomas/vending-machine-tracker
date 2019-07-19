# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@snickers = Snack.create!(name:"Snickers", price: 1)
@chips = Snack.create!(name:"Chips", price: 2)
@twix = Snack.create!(name:"Snickers", price: 3)


@machine_1 = Machine.create!(location: "Boulder")
@machine_2 = Machine.create!(location: "Denver")
@machine_3 = Machine.create!(location: "Golden")

@machine_1.snacks << [@snickers, @chips]
@machine_2.snacks << [@chips, @twix
@machine_3.snacks << [@snickers, @chips, @twix]
