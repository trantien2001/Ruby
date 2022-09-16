puts "Nhâp cạnh thứ 1: "
a = gets.to_i
puts "Nhâp cạnh thứ 2: "
b = gets.to_i
puts "Nhâp cạnh thứ 3: "
c = gets.to_i
if a + b > c and b + c > a and c + a > b
    p = (a + b + c)/2
    s = Math.sqrt(p*(p-a)*(p-b)*(p-c))
    puts "Chu vi: #{2*p}"
    puts "Diện tích: #{s}"
else 
    puts "Ba cạnh vừa nhập không tạo thành tam giác"
end
