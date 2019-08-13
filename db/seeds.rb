Litter.destroy_all
Kitten.destroy_all

R8 = Litter.create({name: "R8 2018", start_date: "2018-05-06", end_date: "2018-06-13", with_mom: false})
D4 = Litter.create({name: "D4 2018", start_date: "2018-04-01", end_date: "2018-04-26", with_mom: false})
M21 = Litter.create({name: "M21", start_date: "2016-08-09", end_date: "2016-09-03", with_mom: false})
V18 = Litter.create({name: "V18", start_date: "2018-07-01", end_date: "2018-07-31", with_mom: false})
C5 = Litter.create({name: "C5 2017", start_date: "2017-08-03", end_date: "2017-08-18", with_mom: true})

user1 = User.create(name: "TinyKittenss", email: "tk@email.com", password_digest: BCrypt::Password.create('1234'))
user2 = User.create(name: "BestFriends", email: "bf@email.com", password_digest: BCrypt::Password.create('1234'))

rita = R8.kittens.create({user_id: 1, name: "Rita", gender: false, image: "Rita.JPG", dob: "2018-03-21"})
ron = R8.kittens.create({user_id: 1, name: "Ronald", gender: true, image: "Ronald.JPG", dob: "2018-03-21"})
dub = D4.kittens.create({user_id: 1, name: "Dublin", gender: true, image: "Dublin1.JPG", dob: "2018-02-24"})
maz = M21.kittens.create({user_id: 2, name: "Mazie", gender: false, image: "Mazie.png", dob: nil})
vel = V18.kittens.create({user_id: 2, name: "Velvet", gender: false, image: "IMG_6856.JPG", dob: "2018-05-17"})
vic = V18.kittens.create({user_id: 2, name: "Vice", gender: true, image: "Vice.JPG", dob: "2018-05-17"})
com = C5.kittens.create({user_id: 2, name: "Cormorant", gender: true, image: "cormorant_01.jpeg", dob: nil})
