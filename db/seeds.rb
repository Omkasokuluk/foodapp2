# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user =User.create(name:"omka",phone:"121212",adres:"qwaszx wesdxc 12",email:"omka@mail.ru",password:"qwerty",password_confirmation:"qwerty",admin: true)