# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Image.destroy_all
Album.destroy_all

t1 = Album.create(name: "Beach", is_private: true, user_id: 2)
t2 = Album.create(name: "History", is_private: true, user_id: 2)
t3 = Album.create(name: "Skiing", is_private: true, user_id: 3)

Image.create(name: "Ipanema", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach02.jpg", album_id: t1.id)
Image.create(name: "7 Mile Beach", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach03.jpg", album_id: t1.id)
Image.create(name: "El Castillo", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach04.jpg", album_id: t1.id)
Image.create(name: "Machu Picchu", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/history02.jpg", album_id: t2.id)
Image.create(name: "Dunrobin Castle", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/history03.jpg", album_id: t2.id)
Image.create(name: "Palace of Westminster", url:"http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/history04.jpg", album_id: t2.id)
Image.create(name: "Dolomites", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/skiing02.jpg", album_id: t3.id)
Image.create(name: "Chamonix", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/skiing03.jpg", album_id: t3.id)
Image.create(name: "Vail", url: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/skiing04.jpg", album_id: t3.id)

