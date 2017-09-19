
################# RESET SEEDS #################################

Dog.destroy_all
Daycare.destroy_all
Appointment.destroy_all

################# DOG SEEDS #################################

user_001 = User.create(email: 'andy@poopmail.com', password: 'dog123')
user_002 = User.create(email: 'walter@poopmail.com', password: 'dog123')
user_003 = User.create(email: 'pam@poopmail.com', password: 'dog123')

user_004 = User.create(email: 'mindy@poopmail.com', password: 'day123')
user_005 = User.create(email: 'brian@poopmail.com', password: 'day123')
user_006 = User.create(email: 'george@poopmail.com', password: 'day123')


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
  photo_url: "/dog_pic_3.jpg",
  owner: "Lisa Simpson",
  breed: "Pitbull",
  weight: 87,
  medical_check: true
  })

dog_4 = user_003.dogs.create({
  name: "Poochy",
  photo_url: "/dog_pic_4.jpg",
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

dog_1.appointments.create({
   created_by: dog_1.user.email,
   daycare_id: 1,
   day: 15,
   month: 9,
   hour: 7
})

dog_1.appointments.create({
   created_by: dog_1.user.email,
   daycare_id: 1,
   day: 235,
   month: 345,
   hour: 7
})

dog_1.appointments.create({
   created_by: dog_1.user.email,
   daycare_id: 2,
   day: 678,
   month: 88,
   hour: 666
})

dog_1.appointments.create({
   created_by: dog_1.user.email,
   daycare_id: 3,
   day: 34234,
   month: 44,
   hour: 78
})

dog_2.appointments.create({
   created_by: dog_2.user.email,
   daycare_id: 3,
   day: 3645,
   month: 1,
   hour: 5
})

dog_2.appointments.create({
   created_by: dog_2.user.email,
   daycare_id: 4,
   day: 78,
   month: 6,
   hour: 3
})

dog_3.appointments.create({
   created_by: dog_3.user.email,
   daycare_id: 4,
   day: 386,
   month: 2,
   hour: 3
})

dog_4.appointments.create({
   created_by: dog_4.user.email,
   daycare_id: 2,
   day: 4,
   month: 4,
   hour: 4
})




#
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
