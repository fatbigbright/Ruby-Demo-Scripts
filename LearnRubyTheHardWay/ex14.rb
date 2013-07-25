user = ARGV.first
prompt = '> '

puts "Hi #{user}, I'm the #{$0} scripts."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()
#likes = gets.chomp() #if use this calling, when ARGV exists, gets will consider 1st parameter in ARGV as a directory/File

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE
