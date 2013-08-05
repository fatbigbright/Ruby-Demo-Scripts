from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

if not File.exists? from_file
    puts "File #{from_file} does not exist."
    exit#exit is a function
end

#we could do these 2 on one line too, how?
input = File.open(from_file)
indata = input.read()
#indata = File.open(from_file).read()

puts "The puts file is #{indata.length} bytes long"

puts "Does the output file exists? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()
