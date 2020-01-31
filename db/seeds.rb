puts "==========================="
puts "Destroy seed"
puts "==========================="

Message.destroy_all
User.destroy_all
Channel.destroy_all

puts "==========================="
puts "Seed destroyed !!!"
puts "==========================="


# Channel
puts "==========================="
puts "Creating Channels"
puts "==========================="

paris = Channel.new(name:"Paris")
general = Channel.new(name:"General")
react = Channel.new(name:"React")

paris.save!
general.save!
react.save!


# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

valentin = User.new(email:"valentin@gmail.com", password: "azerty")

paul = User.new(email:"paul@gmail.com", password: "azerty")

lucas = User.new(email:"lucas@gmail.com", password: "azerty")

valentin.save!
paul.save!
lucas.save!


# Messages
puts "==========================="
puts "Creating Messages"
puts "==========================="

message1 = Message.new(user: valentin, channel: paris, content: "Je suis val et je suis dans Paris")
message2 = Message.new(user: paul, channel: paris, content: "ZZZZZ")
message3 = Message.new(user: lucas, channel: general, content: "Lucas dans le géneral")
message4 = Message.new(user: lucas, channel: react, content: "Lucas dans react")

message1.save!
message2.save!
message3.save!
message4.save!


puts "==========================="
puts "OK OK OK !!!!!"
puts "==========================="
