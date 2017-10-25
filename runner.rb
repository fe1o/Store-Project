
require_relative 'product'
require_relative 'user'
require 'json'

puts "---------------------------------------------------"
puts "Hey you there, come here, we have options for you:"
puts "---------------------------------------------------"
puts "1 - Register a User"
puts "2 - Display the Users"
puts "3 - Register a Product"
puts "4 - Display the Products"
puts "5 - exit the program"
puts "---------------------------------------------------"
asw = gets.chomp

case asw
  when "1"
    while asw == "1"
      print "Name:"
      name = gets.chomp
      print "Email:"
      email = gets.chomp
      user = User.new(email, name)
      user.save
      puts "Thaks #{name.capitalize} for your registration"
      puts 'Do you want to register another user?(1 for yes and 5 to exit)'
      asw = gets.chomp
   end
  when "2" 
   #print "Name:"
   #name = gets.chomp
   #print "Email:"
   #email = gets.chomp
   User.display
#   print "Name:"
 #  name = gets.chomp
  # print "Email:"
   #email = gets.chomp
   #display_users = File.open('users.json', 'r'){
    #|file| 
     # users = file.readlines
      #if User.new(email, name) == users
       #puts 'Loggedin'
      #else
       #puts 'Invalid name or password'
      #end
    #}
 
   when "3"
    while asw == "3"
     print "Product Code:"
     prodcode = gets.chomp
     print "Product Name:"
     prodname = gets.chomp
     print "Product Category:"
     prodcat = gets.chomp
     product = Product.new(prodcode, prodname, prodcat)
     product.save
     puts 'Do you want to register another product?(3 for yes and 5 to exit)'
     asw = gets.chomp
    end
  when "4"
    Product.display
end