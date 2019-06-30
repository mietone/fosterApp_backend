# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


litters = Litter.create(
  [
    {
      name: "A-2019", 
      start_date: "2018-05-06", 
      end_date: "2018-06-13",
      with_mom: false
    },
    {
      name: "D4 2018", 
      start_date: "2018-04-01", 
      end_date: "2018-04-26",
      with_mom: false
    },
    {
      name: "C5 2017", 
      start_date: "2017-08-03", 
      end_date: "2017-08-18",
      with_mom: true
    }
  ]
)

users = User.create(
  [
    {
      name: "TinyKittens",
      email: "tk@email.com"
    },
    {
      name: "BestFriends",
      email: "bf@email.com"
    }
  ]
)
  
kittens = Kitten.create(
  [
    {
      name: "Ada", 
      dob: "2019-04-21",
      gender: false,
      user_id: 1, 
      litter_id: 1
    },
    {
      name: "Aaron", 
      dob: "2019-04-21",
      gender: true,
      user_id: 1, 
      litter_id: 2
    },
    {
      name: "Cormorant", 
      gender: true,
      user_id: 2, 
      litter_id: 3
    }
  ]
)