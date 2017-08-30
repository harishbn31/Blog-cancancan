# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "admin")
Role.create(name: "author")
Role.create(name: "moderator")
Role.create(name: "user")

u = User.new
u.email = "admin@gmail.com"
u.password = "123456"
u.save

p = Permission.new
p.role_id = 1
p.user_id = 1
p.save

author1 = User.new
author1.email = "author1@gmail.com"
author1.password = "123456"
author1.save
author1.roles.push(Role.second)

author2 = User.new
author2.email = "author2@gmail.com"
author2.password = "123456"
author2.save
author2.roles.push(Role.second)

moderator1= User.new
moderator1.email = "moderator1@gmail.com"
moderator1.password = "123456"
moderator1.save
moderator1.roles.push(Role.third)

moderator2 = User.new
moderator2.email = "moderator2@gmail.com"
moderator2.password = "123456"
moderator2.save
moderator2.roles.push(Role.third)

user1 = User.new
user1.email = "user1@gmail.com"
user1.password = "123456"
user1.save
user1.roles.push(Role.last)

user2 = User.new
user2.email = "user2@gmail.com"
user2.password = "123456"
user2.save
user2.roles.push(Role.last)

