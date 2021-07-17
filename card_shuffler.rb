require './lib/deck'

deck = Deck.new

puts
puts "Heres your deck of cards:"
sleep(1)
deck.print_it
puts

deck.shuffle_it

sleep(3)
puts
puts "Here's your shuffled deck of cards:"
sleep(1)
deck.print_it
puts
