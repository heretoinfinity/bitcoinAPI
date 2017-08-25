require 'open-uri'
require 'json'
require_relative 'view'
require_relative 'controller'
require 'pry'
require 'pry-byebug'

view = View.new
controller = Controller.new
view.show_instructions
chosen_currency = view.get_input


BASE_URL = "https://blockchain.info/ticker"


response = open(BASE_URL).read

response_hash = JSON.parse(response)


initial_value = response_hash[chosen_currency]['last']

print "PROCESSING ."

timer = 65
until timer <= 0
  sleep(1)
  print "."
  timer -= 2
end

puts 
puts "Calibrating money hose"
response2 = open(BASE_URL).read

response_hash2 = JSON.parse(response2)
second_value = response_hash2[chosen_currency]['last']


delta = initial_value - second_value

if initial_value < second_value
  puts "Bitcoin has lost #{chosen_currency} #{delta}"
  puts "SELL!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
elsif initial_value == second_value
  puts "Bitcoin value #{chosen_currency} #{second_value}"
  puts "This is the end. Hold on to your ..."
  puts "BUY GOLD!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
else
  puts "Bitcoin has gained #{chosen_currency} #{delta}"
  puts "BUY!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
end

