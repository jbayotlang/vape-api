# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Loading Juices......"
  Juice.create(name: "Juice Name", ratio: "80/20", maker: "Manufacturer")
  Juice.create(name: "Juice Name", ratio: "80/20", maker: "Manufacturer")
puts "Juices loaded!"

puts "Loading Shops......"
  Shop.create(name: "Vape or Crave", address: "-", hours: "12pm-2am daily",
    sns_page: "-", longitude: 121.0564085, latitude: 14.6221365)
  Shop.create(name: "Chief Vapers", address: "-", hours: "12pm-2am daily",
    sns_page: "-", longitude: 121.0509981, latitude: 14.6019639)
puts "Shop loaded"

puts "Loading Mods......"
  Mod.create(name: "Squid", mod_type: "Mechanical",
    battery: "x2 18650", maker: "Vape or Crave")
  Mod.create(name: "Cuboid", mod_type: "Variable",
    battery: "x2 18650", maker: "Joyetech")
puts "Mods loaded"

puts "Loading Wires....."
  Wire.create(name: "C Wire", wire_type: "Kanthal", maker: "Manufacturer")
  Wire.create(name: "D Wire", wire_type: "Stainless Steel", maker: "Manufacturer")
puts "Wires loaded"
