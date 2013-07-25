user = ARGV.first
filename = ARGV[1]

prompt = "> "
txt = File.open(filename)

puts "#{user}, here is your file : #{filename}"
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
