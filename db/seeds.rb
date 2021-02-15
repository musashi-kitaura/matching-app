# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Community.create!(
  [
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'ウイニングイレブン',image:File.open("app/assets/images/add_2471.jpg")},
  ]
)   