# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: "Water", price: 1000, image_url: "http://images.wisegeek.com/water-in-blue-bottle.jpg")
Product.create(name: "Wine", price: 1500, image_url: "http://us.123rf.com/400wm/400/400/kaleena_katt/kaleena_katt0701/kaleena_katt070100007/700659-case-of-wine.jpg")
Product.create(name: "Cheese", price: 500, image_url: "http://www.igourmet.com/images/topics/brie.jpg")
Product.create(name: "Bread", price: 700, image_url: "http://czechmatediary.com/wp-content/uploads/2012/09/RusticBread2.jpg")
Product.create(name: "Grapes", price: 600, image_url: "http://www.examiner.com/images/blog/wysiwyg/image/grapes(26).jpg")
Product.create(name: "Rubber Gloves", price: 300, image_url: "http://i00.i.aliimg.com/photo/v0/800005378/Rubber_gloves.jpg")

User.create(user_name: "picnic_lover")
Cart.create(user_id: 1)
