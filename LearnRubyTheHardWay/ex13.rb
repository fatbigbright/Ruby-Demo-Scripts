first, second, third  = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "Input a number: "
number = STDIN.gets.chomp()
puts "You have input #{number}"
