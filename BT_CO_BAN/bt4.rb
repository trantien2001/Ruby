array = []
print "Nhập số thứ 1: "
a = gets.to_i
array.push(a)
print "Nhập số thứ 2: "
b = gets.to_i
array.push(b)
print "Nhập số thứ 3: "
c = gets.to_i
array.push(c)

puts "Tăng dần: #{array.sort}"
puts "Giảm dần: #{array.sort.reverse}"