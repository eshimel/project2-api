# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  User.create!(email: write@me.com, password: 'abc123',
               password_confirmation: 'abc123')
end


one = Entry.create!(title: 'Tuesday', jpost: "I truely hope that this upcoming Tuesday is not a repeate of the last project week.  It sets up a stressful Wednesday." user_id: 1)

two = Entry.create!(title: 'Wednesday', jpost: "Its Wednesssssssday! Much better than tuesday!" user_id: 1)

three = Entry.create!(title: 'Next day', jpost: "Its Wednesssssssday! Much better than tuesday!" user_id: 2)

four = Entry.create!(title: 'feelings', jpost: "I really hope this app works! I need a boost.  Sometimes I feel like I'm where I need to be and sometimes I feel behind, but I really love programming!  She's a cold-hearted mistress." user_id: 2)
