
################# RESET SEEDS #################################

Dog.destroy_all
Daycare.destroy_all
Appointment.destroy_all

################# DOG SEEDS #################################

user_001 = User.create(email: 'andy@poopmail.com', password: 'pw1234')
user_002 = User.create(email: 'walter@poopmail.com', password: 'pw2345')
user_003 = User.create(email: 'pam@poopmail.com', password: 'pw3456')

user_004 = User.create(email: 'mindy@poopmail.com', password: 'pw4567')
user_005 = User.create(email: 'brian@poopmail.com', password: 'pw4567')
user_006 = User.create(email: 'george@poopmail.com', password: 'pw4567')


dog_1 = user_001.dogs.create({
  name: "Rody",
  photo_url: "/dog_pic_1.jpg",
  owner: "Spenser Holstein",
  breed: "Chihuahua-Lab Mix",
  weight: 25,
  medical_check: true
  })

dog_2 = user_002.dogs.create({
  name: "Charlie",
  photo_url: "/dog_pic_2.jpg",
  owner: "Bob Burgers",
  breed: "Greyhound",
  weight: 110,
  medical_check: true
  })

dog_3 = user_003.dogs.create({
  name: "Maggie",
  photo_url: "dog_pic_3.jpg",
  owner: "Lisa Simpson",
  breed: "Pitbull",
  weight: 87,
  medical_check: true
  })

dog_4 = user_003.dogs.create({
  name: "Poochy",
  photo_url: "dog_pic_4.jpg",
  owner: "Carl Bumpkin",
  breed: "German Shepherd",
  weight: 54,
  medical_check: true
  })

################# DAYCARE SEEDS #################################

daycare_1 = user_004.daycares.create({
  name: "Pup Daycare",
  address: "3322 West Street",
  price: 22
  })

daycare_2 = user_005.daycares.create({
  name: "Delux Daycare Center",
  address: "64 New Drive",
  price: 35
  })

daycare_3 = user_006.daycares.create({
  name: "Dr. Bobs Dog Daycare",
  address: "477 Corporate Drive",
  price: 30
  })

daycare_4 = user_006.daycares.create({
  name: "Funtime Daycare",
  address: "57 State Street",
  price: 25
  })



################# APPOINTMENT SEEDS ##########################

# appt_1 = user_001.appointments.create({
#   dog_id: 1,
#   daycare_id: 3,
#   day: 15,
#   month: 9,
#   year: 2017,
#   hour: 7
#   })
#
#
# appt_2 = user_001.appointments.create({
#   dog_id: 1,
#   daycare_id: 3,
#   day: 18,
#   month: 9,
#   year: 2017,
#   hour: 13
#   })
#
#
# appt_2 = user_001.appointments.create({
#   dog_id: 1,
#   daycare_id: 4,
#   day: 21,
#   month: 9,
#   year: 2017,
#   hour: 7
#   })

# appt_1 = Appointment.create({
#   dog_id: 1,
#   daycare_id: 3,
#   day: 15,
#   month: 9,
#   year: 2017,
#   hour: 7
#   })
#
#
# appt_2 = Appointment.create({
#   dog_id: 1,
#   daycare_id: 3,
#   day: 18,
#   month: 9,
#   year: 2017,
#   hour: 13
#   })
#
#
# appt_2 = Appointment.create({
#   dog_id: 1,
#   daycare_id: 4,
#   day: 21,
#   month: 9,
#   year: 2017,
#   hour: 7
#   })
