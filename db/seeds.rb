# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


walid = User.create(email: 'walid.argh@gmail.com')
ahmad = User.create(email: 'ahmadargh@yahoo.com')
other_guy = User.create(email: 'otherguy@othersite.com')

google_url = ShortenedUrl.create_for_user_and_long_url!(walid, 'google.com')
yahoo_url = ShortenedUrl.create_for_user_and_long_url!(ahmad, 'yahoo.com')
other_url = ShortenedUrl.create_for_user_and_long_url!(other_guy, 'othersite.com')
