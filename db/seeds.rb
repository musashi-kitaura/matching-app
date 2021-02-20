# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Community.create!(
  [
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'モンハン',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg"),category_id: 1},
    {name: 'ウイニングイレブン',image:File.open("app/assets/images/d50711-181-204570-12.jpg"),category_id: 2},
  ]
)   

Category.create!(
  [
    {name: 'アクションゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'シューティングゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'シュミレーションゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'レーシングゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'アドベンチャーゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'ロールプレイングゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: 'パズルゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
    {name: '音楽ゲーム',image:File.open("app/assets//images/20200515-00178549-roupeiro-000-9-view.jpg")},
  ]
)  