# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

driver = Driver.create(
  name:'driver1', sex:0, phone:'1500505055', id_card:'drivers/id_card/driver1@example.com.png',
  license:'drivers/license/driver1@example.com.png', bond:0.0, head:'drivers/head/driver1@example.com.png',
  email:'driver@example.com',password:'123456',pass:false
  )
driver2 = Driver.create(
  name:'driver2', sex:0, phone:'1500505055', id_card:'drivers/id_card/driver2@example.com.png',
  license:'drivers/license/driver2@example.com.png', bond:0.0, head:'drivers/head/driver2@example.com.png',
  email:'driver2@example.com',password:'123456',pass:false
  )
driver3 = Driver.create(
  name:'driver3', sex:0, phone:'1500505055', id_card:'drivers/id_card/driver3@example.com.png',
  license:'drivers/license/driver3@example.com.png', bond:0.0, head:'drivers/head/driver3@example.com.png',
  email:'driver3@example.com',password:'123456',pass:false
  )

car1 = Car.create(
  number:"j12341", person_number:4,picture:'cars/j12341.png',driver_id: driver1.id
  )
car2 = Car.create(
  number:"j12342", person_number:4,picture:'cars/j12342.png',driver_id: driver2.id
  )
car3 = Car.create(
  number:"j12343", person_number:4,picture:'cars/j12343.png',driver_id: driver3.id
  )
  
s1 = Student.create(
  name:'s1',sex:1,phone:'15002969736',id_card:'students/id_card/s1@example.com.png',
  email:'s1@example.com',password:'123456',pass:false
  )
s2 = Student.create(
  name:'s2',sex:0,phone:'15002969737',id_card:'students/id_card/s2@example.com.png',
  email:'s2@example.com',password:'123456',pass:false
  ) 
s3 = Student.create(
  name:'s3',sex:1,phone:'15002969737',id_card:'students/id_card/s3@example.com.png',
  email:'s3@example.com',password:'123456',pass:false
  ) 
s4 = Student.create(
  name:'s4',sex:0,phone:'15002969737',id_card:'students/id_card/s4@example.com.png',
  email:'s4@example.com',password:'123456',pass:false
  ) 
manager = Manager.create(
  name:'ma1', sex:0, phone:"15002969737",email:'ma1@example.com',password:'123456'
  )

