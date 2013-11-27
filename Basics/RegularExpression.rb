phone = "123-456-7890"
if phone =~ /(\d{3}-)(\d{3}-)(\d{4})/
    ext = $1
    city = $2
    num = $3
end

puts ext
puts city
puts num
