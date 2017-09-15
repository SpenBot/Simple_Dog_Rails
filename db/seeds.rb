
################# RESET SEEDS #################################

Dog.destroy_all
Daycare.destroy_all

################# DOG SEEDS #################################

dog_1 = Dog.create({
  name: "Rody",
  photo_url: "no photo",
  owner: "Spenser Holstein",
  breed: "Chihuahua-Lab Mix",
  weight: 25,
  medical_check: true
  })

dog_2 = Dog.create({
  name: "Charlie",
  photo_url: "no photo",
  owner: "Bob Burgers",
  breed: "Greyhound",
  weight: 110,
  medical_check: true
  })

dog_3 = Dog.create({
  name: "Maggie",
  photo_url: "no photo",
  owner: "Lisa Simpson",
  breed: "Pitbull",
  weight: 87,
  medical_check: true
  })

dog_4 = Dog.create({
  name: "Poochy",
  photo_url: "no photo",
  owner: "Carl Bumpkin",
  breed: "German Shepherd",
  weight: 54,
  medical_check: true
  })

################# DAYCARE SEEDS #################################

daycare_1 = Daycare.create({
  name: "Pup Daycare",
  address: "3322 West Street",
  price: 22
  })

daycare_2 = Daycare.create({
  name: "Delux Daycare Center",
  address: "64 New Drive",
  price: 35
  })

daycare_3 = Daycare.create({
  name: "Dr. Bobs Dog Daycare",
  address: "477 Corporate Drive",
  price: 30
  })

daycare_4 = Daycare.create({
  name: "Funtime Daycare",
  address: "57 State Street",
  price: 25
  })
