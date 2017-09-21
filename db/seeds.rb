
################# RESET SEEDS #################################

Dog.destroy_all
Daycare.destroy_all
Appointment.destroy_all

################# DOG SEEDS #################################

user_001 = User.create(email: 'andy@poopmail.com', password: 'dog123')
user_002 = User.create(email: 'bob@poopmail.com', password: 'dog123')
user_003 = User.create(email: 'carl@poopmail.com', password: 'dog123')
user_004 = User.create(email: 'dave@poopmail.com', password: 'dog123')
user_005 = User.create(email: 'ed@poopmail.com', password: 'dog123')
user_006 = User.create(email: 'fred@poopmail.com', password: 'dog123')
user_007 = User.create(email: 'greg@poopmail.com', password: 'dog123')

user_008 = User.create(email: 'hank@poopmail.com', password: 'day123')
user_009 = User.create(email: 'ivan@poopmail.com', password: 'day123')
user_010 = User.create(email: 'john@poopmail.com', password: 'day123')
user_011 = User.create(email: 'kevin@poopmail.com', password: 'day123')
user_012 = User.create(email: 'lenny@poopmail.com', password: 'day123')
user_013 = User.create(email: 'mike@poopmail.com', password: 'day123')
user_014 = User.create(email: 'nick@poopmail.com', password: 'day123')
user_015 = User.create(email: 'otto@poopmail.com', password: 'day123')
user_016 = User.create(email: 'paul@poopmail.com', password: 'day123')


dog_1 = user_001.dogs.create({
  name: "Moop",
  photo_url: "/dog_pic_1.png",
  owner: "Etta Bakley",
  breed: "Boxer",
  weight: 25,
  medical_check: true
})

dog_2 = user_002.dogs.create({
  name: "Rocky",
  photo_url: "/dog_pic_2.png",
  owner: "Kenton Maselli",
  breed: "Greyhound",
  weight: 110,
  medical_check: true
})

dog_3 = user_002.dogs.create({
  name: "Bullwinky",
  photo_url: "/dog_pic_3.png",
  owner: "Lottie Fredericksen",
  breed: "Pitbull",
  weight: 87,
  medical_check: true
})

dog_4 = user_003.dogs.create({
  name: "Winston",
  photo_url: "/dog_pic_4.png",
  owner: "Horacio Seawood",
  breed: "German Shepherd",
  weight: 54,
  medical_check: true
})

dog_5 = user_004.dogs.create({
  name: "Duke",
  photo_url: "/dog_pic_5.png",
  owner: "Lilly Fallis",
  breed: "Husky",
  weight: 22,
  medical_check: true
})

dog_6 = user_004.dogs.create({
  name: "Cody",
  photo_url: "/dog_pic_6.png",
  owner: "Tiffanie Cannata",
  breed: "Poodle",
  weight: 34,
  medical_check: true
})

dog_7 = user_005.dogs.create({
  name: "Buster",
  photo_url: "/dog_pic_7.png",
  owner: "Rosalie Nunez",
  breed: "Bulldog",
  weight: 49,
  medical_check: true
})

dog_8 = user_006.dogs.create({
  name: "Zoe",
  photo_url: "/dog_pic_8.png",
  owner: "Alex Vittetoe",
  breed: "Beagle",
  weight: 31,
  medical_check: true
})

dog_9 = user_007.dogs.create({
  name: "Diasy",
  photo_url: "/dog_pic_9.png",
  owner: "Carolina Swiney",
  breed: "Daschund",
  weight: 19,
  medical_check: true
})

dog_10 = user_007.dogs.create({
  name: "Bella",
  photo_url: "/dog_pic_10.png",
  owner: "Travis Teeple",
  breed: "Retriever",
  weight: 72,
  medical_check: true
})



################# DAYCARE SEEDS #################################

daycare_1 = user_008.daycares.create({
  name: "Pup Daycare",
  address: "3322 West Street",
  city: "Bethesda, MD, 20810",
  price: 22,
  photo_url: "/dc_pic_1.png"
  })

daycare_2 = user_009.daycares.create({
  name: "Delux Daycare Center",
  address: "64 New Drive",
  city: "Washington D.C., MD, 20001",
  price: 35,
  photo_url: "/dc_pic_2.png"
  })

daycare_3 = user_010.daycares.create({
  name: "Dr. Bobs Dog Daycare",
  address: "477 Corporate Drive",
  city: "Bethesda, MD, 20810",
  price: 30,
  photo_url: "/dc_pic_3.png"
  })

daycare_4 = user_011.daycares.create({
  name: "Funtime Daycare",
  address: "57 State Street",
  city: "Silver Spring, MD, 20815",
  price: 25,
  photo_url: "/dc_pic_4.png"
  })

daycare_5 = user_012.daycares.create({
  name: "Barky Bark Daycare",
  address: "4444 Circle Drive",
  city: "Washington D.C., MD, 20001",
  price: 20,
  photo_url: "/dc_pic_5.png"
  })

daycare_6 = user_013.daycares.create({
  name: "Wag Time Dog Center",
  address: "91 Center Street",
  city: "Bethesda, MD, 20810",
  price: 18,
  photo_url: "/dc_pic_6.png"
})

daycare_7 = user_014.daycares.create({
  name: "Super Duper Dogs",
  address: "300 Oxford Court",
  city: "Silver Spring, MD, 20815",
  price: 25,
  photo_url: "/dc_pic_7.png"
})

daycare_8 = user_015.daycares.create({
  name: "Best Friend Daycare",
  address: "67 8th Street",
  city: "Washington D.C., MD, 20001",
  price: 22,
  photo_url: "/dc_pic_8.png"
})



################# APPOINTMENT SEEDS ##########################

dog_1.appointments.create({
   daycare_id: 1,
   created_by: dog_1.user,

   weekday: "Tuesday",
   month: "September",
   day: 24,
   time: 7
})

dog_1.appointments.create({
   daycare_id: 1,
   created_by: dog_1.user,

   weekday: "Wednesday",
   month: "September",
   day: 25,
   time: 13
})

dog_1.appointments.create({
   daycare_id: 3,
   created_by: dog_1.user,

   weekday: "Friday",
   month: "September",
   day: 27,
   time: 8
})

dog_1.appointments.create({
   daycare_id: 1,
   created_by: dog_1.user,

   weekday: "Monday",
   month: "September",
   day: 29,
   time: 7
})

dog_1.appointments.create({
   daycare_id: 5,
   created_by: dog_1.user,

   weekday: "Tuesday",
   month: "September",
   day: 30,
   time: 7
})

############################


dog_2.appointments.create({
   daycare_id: 2,
   created_by: dog_2.user,

   weekday: "Thursday",
   month: "September",
   day: 22,
   time: 8
})

dog_2.appointments.create({
   daycare_id: 2,
   created_by: dog_2.user,

   weekday: "Friday",
   month: "September",
   day: 23,
   time: 8
})

dog_2.appointments.create({
   daycare_id: 4,
   created_by: dog_2.user,

   weekday: "Monday",
   month: "September",
   day: 26,
   time: 8
})

dog_2.appointments.create({
   daycare_id: 4,
   created_by: dog_2.user,

   weekday: "Tuesday",
   month: "September",
   day: 27,
   time: 8
})




dog_3.appointments.create({
   daycare_id: 2,
   created_by: dog_3.user,

   weekday: "Thursday",
   month: "September",
   day: 22,
   time: 8
})

dog_3.appointments.create({
   daycare_id: 2,
   created_by: dog_3.user,

   weekday: "Friday",
   month: "September",
   day: 24,
   time: 8
})

dog_3.appointments.create({
   daycare_id: 4,
   created_by: dog_3.user,

   weekday: "Monday",
   month: "September",
   day: 26,
   time: 8
})

dog_3.appointments.create({
   daycare_id: 4,
   created_by: dog_3.user,

   weekday: "Tuesday",
   month: "September",
   day: 27,
   time: 8
})

#############################

dog_4.appointments.create({
   daycare_id: 8,
   created_by: dog_4.user,

   weekday: "Tuesday",
   month: "September",
   day: 23,
   time: 11
})

dog_4.appointments.create({
   daycare_id: 8,
   created_by: dog_4.user,

   weekday: "Wednesday",
   month: "September",
   day: 24,
   time: 11
})

#############################

dog_5.appointments.create({
   daycare_id: 5,
   created_by: dog_5.user,

   weekday: "Wednesday",
   month: "September",
   day: 24,
   time: 9
})

dog_5.appointments.create({
   daycare_id: 5,
   created_by: dog_5.user,

   weekday: "Thursday",
   month: "September",
   day: 25,
   time: 9
})

dog_5.appointments.create({
   daycare_id: 6,
   created_by: dog_5.user,

   weekday: "Friday",
   month: "September",
   day: 26,
   time: 8
})

#############################

dog_6.appointments.create({
   daycare_id: 7,
   created_by: dog_6.user,

   weekday: "Monday",
   month: "September",
   day: 21,
   time: 10
})

dog_6.appointments.create({
   daycare_id: 7,
   created_by: dog_6.user,

   weekday: "Tuesday",
   month: "September",
   day: 22,
   time: 10
})

dog_6.appointments.create({
   daycare_id: 7,
   created_by: dog_6.user,

   weekday: "Wednesday",
   month: "September",
   day: 23,
   time: 10
})

dog_6.appointments.create({
   daycare_id: 2,
   created_by: dog_6.user,

   weekday: "Thursday",
   month: "September",
   day: 24,
   time: 10
})

dog_6.appointments.create({
   daycare_id: 1,
   created_by: dog_6.user,

   weekday: "Friday",
   month: "September",
   day: 25,
   time: 10
})

###############################

dog_7.appointments.create({
   daycare_id: 1,
   created_by: dog_7.user,

   weekday: "Tuesday",
   month: "September",
   day: 22,
   time: 6
})

dog_7.appointments.create({
   daycare_id: 1,
   created_by: dog_7.user,

   weekday: "Wednesday",
   month: "September",
   day: 23,
   time: 6
})

dog_7.appointments.create({
   daycare_id: 8,
   created_by: dog_7.user,

   weekday: "Thursday",
   month: "September",
   day: 24,
   time: 11
})

dog_7.appointments.create({
   daycare_id: 8,
   created_by: dog_7.user,

   weekday: "Friday",
   month: "September",
   day: 25,
   time: 9
})

############################

dog_8.appointments.create({
   daycare_id: 3,
   created_by: dog_8.user,

   weekday: "Monday",
   month: "September",
   day: 21,
   time: 7
})

dog_8.appointments.create({
   daycare_id: 3,
   created_by: dog_8.user,

   weekday: "Tuesday",
   month: "September",
   day: 22,
   time: 7
})

dog_8.appointments.create({
   daycare_id: 6,
   created_by: dog_8.user,

   weekday: "Wednesday",
   month: "September",
   day: 23,
   time: 9
})

dog_8.appointments.create({
   daycare_id: 6,
   created_by: dog_8.user,

   weekday: "Wednesday",
   month: "September",
   day: 24,
   time: 11
})

dog_8.appointments.create({
   daycare_id: 5,
   created_by: dog_8.user,

   weekday: "Thursday",
   month: "September",
   day: 25,
   time: 7
})

dog_8.appointments.create({
   daycare_id: 4,
   created_by: dog_8.user,

   weekday: "Friday",
   month: "September",
   day: 26,
   time: 7
})











# dog_1.appointments.create({
#    created_by: dog_1.user.email,
#    daycare_id: 1,
#    day: 235,
#    month: 345,
#    hour: 7
# })
#
# dog_1.appointments.create({
#    created_by: dog_1.user.email,
#    daycare_id: 2,
#    day: 678,
#    month: 88,
#    hour: 666
# })
#
# dog_1.appointments.create({
#    created_by: dog_1.user.email,
#    daycare_id: 3,
#    day: 34234,
#    month: 44,
#    hour: 78
# })
#
# dog_2.appointments.create({
#    created_by: dog_2.user.email,
#    daycare_id: 3,
#    day: 3645,
#    month: 1,
#    hour: 5
# })
#
# dog_2.appointments.create({
#    created_by: dog_2.user.email,
#    daycare_id: 4,
#    day: 78,
#    month: 6,
#    hour: 3
# })
#
# dog_3.appointments.create({
#    created_by: dog_3.user.email,
#    daycare_id: 4,
#    day: 386,
#    month: 2,
#    hour: 3
# })
#
# dog_4.appointments.create({
#    created_by: dog_4.user.email,
#    daycare_id: 2,
#    day: 4,
#    month: 4,
#    hour: 4
# })
