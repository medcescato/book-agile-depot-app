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

Product.create(title: 'Agile Web Development with Rails (4th edition)',
description:
%{
Rails just keeps on changing. Rails 3 and Ruby 1.9 bring hundreds of improvements, including new APIs and substantial performance enhancements. The fourth edition of this award-winning classic has been reorganized and refocused so it's more useful than ever before for developers new to Ruby and Rails.
},
image_url: 'http://imagery.pragprog.com/products/196/rails4_mediumcover.jpg',
price: 29.95)

Product.create(title: 'Deploying Rails',
description:
%{
Today's modern Rails applications have lots of moving parts. Make sure your next production deployment goes smoothly with this hands-on book, which guides you through the entire production process. You'll set up scripts to install and configure all the software your servers need, including your application code. Once you're in production, you'll learn how to set up systems to monitor your application's health, gather metrics so you can stop problems before they start, and fix things when they go wrong.
},
image_url: 'http://imagery.pragprog.com/products/246/cbdepra_mediumbeta.jpg',
price: 29.95)