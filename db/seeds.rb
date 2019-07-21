Litter.create!([
  {name: "R8 2018", start_date: "2018-05-06", end_date: "2018-06-13", with_mom: false},
  {name: "D4 2018", start_date: "2018-04-01", end_date: "2018-04-26", with_mom: false},
  {name: "M21", start_date: "2016-08-09", end_date: "2016-09-03", with_mom: false},
  {name: "V18", start_date: "2018-07-01", end_date: "2018-07-31", with_mom: false},
  {name: "C5 2017", start_date: "2017-08-03", end_date: "2017-08-18", with_mom: true}
])

user1 = User.create(
      name: "TinyKittenss",
      email: "tk@email.com",
      password_digest: BCrypt::Password.create('1234')
    )

user2 = User.create(
  name: "BestFriends",
  email: "bf@email.com",
  password_digest: BCrypt::Password.create('1234')
    )


Kitten.create!([
  {user_id: 1, litter_id: 1, name: "Rita", gender: false, image: "Rita.JPG", dob: "2018-03-21"},
  {user_id: 1, litter_id: 1, name: "Ronald", gender: true, image: "Ronald.JPG", dob: "2018-03-21"},
  {user_id: 1, litter_id: 1, name: "Ripli", gender: false, image: "Ripli.JPG", dob: "2018-03-21"},
  {user_id: 1, litter_id: 1, name: "Rupert", gender: true, image: "Rupert.JPG", dob: "2018-03-21"},
  {user_id: 1, litter_id: 2, name: "Dublin", gender: true, image: "Dublin1.JPG", dob: "2018-02-24"},
  {user_id: 1, litter_id: 2, name: "Daylor", gender: true, image: "Daylor.JPG", dob: "2018-02-24"},
  {user_id: 1, litter_id: 2, name: "Daria", gender: false, image: "Daria.JPG", dob: "2018-02-24"}
])
