# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Products
Product.delete_all

Product.create(title: 'Programming Ruby 1.9',
description:
%{
Ruby is the fastest growing and most exciting dynamic language
out there. If you need to get working programs delivered fast,
you should add Ruby to your toolbox.
},
image_url: 'http://imagery.pragprog.com/products/99/ruby3_mediumcover.jpg',
price: 49.95)

Product.create(title: 'The Cucumber Book',
description:
%{
Your customers want rock-solid, bug-free software that does exactly what they expect it to do. Yet they can't always articulate their ideas clearly enough for you to turn them into code. The Cucumber Book dives straight into the core of the problem: communication between people. Cucumber saves the day; it's a testing, communication, and requirements tool - all rolled into one.
},
image_url: 'http://imagery.pragprog.com/products/216/hwcuc_mediumcover.jpg',
price: 29.95)